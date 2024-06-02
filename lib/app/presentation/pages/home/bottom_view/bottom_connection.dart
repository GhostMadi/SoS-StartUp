import 'package:flutter/material.dart';

class BottomConnectionPage extends StatefulWidget {
  const BottomConnectionPage({super.key});

  @override
  State<BottomConnectionPage> createState() => _BottomConnectionPageState();
}

int currentIndex = 1;
List pages = const [
  Icon(Icons.home),
  Icon(Icons.favorite_outline),
  Icon(Icons.add),
  Icon(Icons.chat),
  Icon(Icons.person)
];

class _BottomConnectionPageState extends State<BottomConnectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: pages[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => setState(() => currentIndex = index),
          currentIndex: currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
          ]),
    );
  }
}
