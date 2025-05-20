import 'package:flutter/material.dart';

class JojoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jojo\'s Bizarre Adventure')),
      body: Column(
        children: [
          Image.asset('images/jojo.jpg', height: 300, width: 200),
          Text(
            'Jojo\'s Bizarre Adventure',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Jojo\'s Bizarre Adventure is an action-adventure anime that follows the story of the Joestar family, who are destined to battle supernatural foes throughout generations. The series is known for its unique art style, imaginative battles, and memorable characters, including Jotaro Kujo and Dio Brando.',
            ),
          ),
        ],
      ),
    );
  }
}
