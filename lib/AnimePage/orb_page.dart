import 'package:flutter/material.dart';

class OrbPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Orb: On the Movement of the Earth')),
      body: Column(
        children: [
          Image.asset('images/orb.jpg', height: 300, width: 200),
          Text(
            'Orb: On the Movement of the Earth',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Orb: On the Movement of the Earth is an educational anime that explores the principles of physics and astronomy through the lens of a fantastical narrative. The story follows a group of students who are transported to a magical realm where they must use their knowledge of the Earth\'s movements to solve puzzles and overcome challenges. Along the way, they learn about gravity, rotation, and the cosmos in a fun and engaging way.',
            ),
          ),
        ],
      ),
    );
  }
}
