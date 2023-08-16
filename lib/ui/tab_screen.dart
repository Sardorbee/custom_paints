import 'package:custom_paints/services/providers/my_tab_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    debugPrint("building");
    return Scaffold(
      body: IndexedStack(
        index: context.watch<MyTabProvider>().currentIndex,
        children: context.read<MyTabProvider>().stackItems,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: context.watch<MyTabProvider>().currentIndex,
        onTap: (index) {
          context.read<MyTabProvider>().updateIndex(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: 'Flag',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloudy_snowing),
            label: 'Snowman',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_emotions_outlined),
            label: 'Emoji',
          ),
        ],
      ),
    );
  }
}
