import 'package:flutter/material.dart';

class QuranSurahScreen extends StatelessWidget {
  const QuranSurahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quran Surahs'),
      ),
      body: Column(
        children: [
          // Quran Read options
          ListTile(
            title: const Text('Quran Read'),
            onTap: () {
              // Navigate to Quran Read screen
            },
          ),
          ListTile(
            title: const Text('Quran Listen'),
            onTap: () {
              // Navigate to Quran Listen screen
            },
          ),
        ],
      ),
    );
  }
}
