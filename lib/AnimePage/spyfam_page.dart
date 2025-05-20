import 'package:flutter/material.dart';

class SpyFamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Spy x Family')),
      body: Column(
        children: [
          Image.asset('images/spyfam.jpg', height: 300, width: 200),
          Text(
            'Spy x Family',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Spy x Family is an action-comedy anime that follows the story of a spy named Twilight, who is tasked with infiltrating an elite school. To maintain his cover, he must create a fake family, leading to hilarious and heartwarming situations.',
            ),
          ),
        ],
      ),
    );
  }
}
