import 'package:flutter/material.dart';
import 'AnimePage/frieren_page.dart';
import 'AnimePage/orb_page.dart';
import 'AnimePage/opm_page.dart';
import 'AnimePage/jojo_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        leading: PopupMenuButton<String>(
          icon: const Icon(Icons.menu),
          onSelected: (value) {
            if (value == 'Profil') {
            } else if (value == 'Browse') {
            } else if (value == 'MyList') {
            } else if (value == 'Settings') {}
          },
          itemBuilder:
              (BuildContext context) => [
                const PopupMenuItem(value: 'Profil', child: Text('Profil')),
                const PopupMenuItem(value: 'Browse', child: Text('Browse')),
                const PopupMenuItem(value: 'Settings', child: Text('Settings')),
              ],
        ),
        titleSpacing: 0,
        title: const Text('AniLib'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: AnimeSearchDelegate());
            },
          ),
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      body: GridView.builder(
        itemCount: 4, // hanya 4 kartu
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          final List<String> images = [
            'images/frieren.jpg',
            'images/orb.jpg',
            'images/opm.jpg',
            'images/jojo.jpg',
          ];
          final List<String> titles = [
            'Sousou no Frieren',
            'Orb: On the Movement of the Earth',
            'One Punch Man',
            'Jojo\'s Bizarre Adventure',
          ];

          // Daftar page yang akan dibuka
          final List<Widget> pages = [
            FrierenPage(),
            OrbPage(),
            OpmPage(),
            JojoPage(),
          ];

          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => pages[index]),
              );
            },
            child: Card(
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: Image.asset(images[index], fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(titles[index], textAlign: TextAlign.center),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class AnimeSearchDelegate extends SearchDelegate {
  final List<String> animeList = [
    'Naruto',
    'One Piece',
    'Attack on Titan',
    'Sousou no Frieren',
    'Orb: On the Movement of the Earth',
    'Death Note',
    'Fullmetal Alchemist',
    'Jojo\'s Bizarre Adventure',
    'One Punch Man',
    'Dragon Ball Z',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = animeList.where(
      (anime) => anime.toLowerCase().contains(query.toLowerCase()),
    );
    return ListView(
      children:
          results.map<Widget>((anime) => ListTile(title: Text(anime))).toList(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = animeList.where(
      (anime) => anime.toLowerCase().contains(query.toLowerCase()),
    );
    return ListView(
      children:
          suggestions
              .map<Widget>((anime) => ListTile(title: Text(anime)))
              .toList(),
    );
  }
}
