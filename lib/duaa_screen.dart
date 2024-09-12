import 'package:flutter/material.dart';

class DuaaScreen extends StatelessWidget {
  const DuaaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Islamic Duaas'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 10, // Replace with your actual number of Duaas
        itemBuilder: (context, index) {
          return Card(
            child: Center(
              child: Text(
                'Dua ${index + 1}',
                style: const TextStyle(fontSize: 18),
              ),
            ),
          );
        },
      ),
    );
  }
}
