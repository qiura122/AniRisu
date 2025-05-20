import 'package:flutter/material.dart';

class FrierenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sousou no Frieren')),
      body: Column(
        children: [
          Image.asset('images/frieren.jpg', height: 300, width: 200),
          Text(
            'Sousou no Frieren',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Sousou no Frieren is a fantasy anime that follows the story of Frieren, a mage who was part of the hero\'s party that defeated the Demon King. After the battle, she embarks on a journey to understand humanity and the passage of time, reflecting on her past and the bonds she formed with her companions.',
            ),
          ),
        ],
      ),
    );
  }
}
