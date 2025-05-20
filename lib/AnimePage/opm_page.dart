import 'package:flutter/material.dart';

class OpmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('One Punch Man')),
      body: Column(
        children: [
          Image.asset('images/opm.jpg', height: 300, width: 200),
          Text(
            'One Punch Man',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'One Punch Man is an action-comedy anime that follows the story of Saitama, a hero who is so powerful that he can defeat any opponent with a single punch. Despite his overwhelming strength, Saitama struggles with boredom and a lack of recognition in the hero community. The series humorously explores themes of heroism, identity, and the nature of strength.',
            ),
          ),
        ],
      ),
    );
  }
}