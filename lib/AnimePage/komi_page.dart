import 'package:flutter/material.dart';

class KomiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Komi-san wa, Komyushou desu.')),
      body: Column(
        children: [
          Image.asset('images/komi.png', height: 300, width: 200),
          Text(
            'Komi-san wa, Komyushou desu.',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Komi-san wa, Komyushou desu. is a romantic comedy anime that follows the story of a high school girl named Shouko Komi, who has a communication disorder. Despite her beauty and popularity, she struggles to make friends and communicate with others. The story follows her journey as she tries to overcome her challenges with the help of her classmate, Tadano.',
            ),
          ),
        ],
      ),
    );
  }
}