import 'package:flutter/material.dart';
import 'package:latihan/screens/detail_screen.dart';
import 'edit_profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Map<String, String>> news = [
    {
      'imageUrl':
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
      'title': 'Russian warship: Moskva sinks in Black Sea',
      'author': 'Wahyu',
      'description':
          'Cukup salin salah satu URL di atas dan gunakan sebagai imageUrl di aplikasi Flutter atau HTML <img tag. Kamu juga bisa mengunduh gambar dari URL tersebut dan menyimpannya untuk digunakan secara offline.',
      'time': '4h ago',
    },
    {
      'imageUrl':
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
      'title': 'Russian warship: Moskva sinks in Black Sea',
      'author': 'Wahyu',
      'description':
          'Cukup salin salah satu URL di atas dan gunakan sebagai imageUrl di aplikasi Flutter atau HTML <img tag. Kamu juga bisa mengunduh gambar dari URL tersebut dan menyimpannya untuk digunakan secara offline.',
      'time': '4h ago',
    }
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      ListView.builder(
        itemCount: news.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      title: news[index]['title'].toString(),
                      description: news[index]['description'].toString(),
                      imageUrl: news[index]['imageUrl'].toString(),
                    ),
                  ),
                );
              },
              child: Card(
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.8),
                      child: Image.network(
                        news[index]['imageUrl']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        news[index]['title']!,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        '${news[index]['author']!} • ${news[index]['time']!}',
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      const Center(child: Text('Explore Page')),
      const Center(child: Text('Bookmark Page')),
      const EditProfileScreen()
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              'HMTI',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'News',
              style: TextStyle(
                color: Color(0xFF1877F2),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF1877F2),
              ),
              child: Text(
                'Pengaturan',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profil'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EditProfileScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Pengaturan'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          ...pages,
          const EditProfileScreen(),
          const EditProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: const Color(0xFF1877F2),
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
