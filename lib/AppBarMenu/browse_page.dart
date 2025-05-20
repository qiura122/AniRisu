import 'package:flutter/material.dart';

class BrowsePage extends StatelessWidget {
  const BrowsePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Browse')),
      body: Container(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            final List<String> genre = [
              'Action',
              'Adventure',
              'Comedy',
              'Drama',
              'Fantasy',
              'Horror',
              'Mystery',
              'Romance',
              'Sci-Fi',
              'Slice of Life',
              'Sports',
              'Supernatural',
              'Thriller',
              'Historical',
              'Isekai',
              'Mecha',
              'Magic',
              'School',
              'Zombie',
              'Music',
            ];
            return Container(
              margin: const EdgeInsets.all(8.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(genre[index % genre.length]),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
