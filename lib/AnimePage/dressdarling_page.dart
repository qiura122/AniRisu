import 'package:flutter/material.dart';

class DressDarlingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Dress-Up Darling')),
      body: Column(
        children: [
          Image.asset('images/dressdarling.jpg', height: 300, width: 200),
          Text(
            'My Dress-Up Darling',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'My Dress-Up Darling is a romantic comedy anime that follows the story of a high school student named Wakana Gojo, who is passionate about making hina dolls. One day, he meets Marin Kitagawa, a popular girl in his class who has a secret passion for cosplay. Together, they embark on a journey to create the perfect costume for Marin, leading to heartwarming and humorous situations.',
            ),
          ),
        ],
      ),
    );
  }
}
