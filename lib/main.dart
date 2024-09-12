import 'package:flutter/material.dart';
import 'quran_surah_screen.dart';
import 'hadith_collection_screen.dart';
import 'duaa_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const QuranSurahScreen(),
    const HadithCollectionScreen(),
    const DuaaScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Hadith',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Duaa',
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
    );
  }
}
