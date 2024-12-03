import 'package:flutter/material.dart';
import 'category_button.dart';
import 'news_item.dart';
import 'favorite_screen.dart'; // Impor FavoriteScreen
import 'profile_screen.dart'; // Impor ProfileScreen

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // Menyimpan index tab yang dipilih

  // Daftar halaman untuk ditampilkan
  final List<Widget> _pages = [
    HomeContent(), // Halaman Home
    const FavoriteScreen(), // Halaman Favorite
    const ProfileScreen(), // Halaman Profile
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Perbarui index yang dipilih
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 243, 33, 65),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/stylesnap.png', // Path file logo Anda
                      height: 180, // Sesuaikan tinggi logo
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'StyleSnap',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text('Categories'),
              onTap: () {
                Navigator.pop(context);
                // Tambahkan logika ke halaman Categories
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                Navigator.pop(context);
                // Tambahkan logika ke halaman About
              },
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex], // Tampilkan halaman yang sesuai

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex, // Tampilkan index yang dipilih
        onTap: _onItemTapped, // Panggil fungsi saat tombol ditekan
      ),
    );
  }
}

// Konten Halaman Home
class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search Bar
        _buildSearchBar(),
        // Latest News Section
        _buildLatestNewsSection(),
        // Categories
        _buildCategoryButtons(),
        // News List
        _buildNewsList(),
      ],
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: 'Search...',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.grey[200],
        ),
      ),
    );
  }

  Widget _buildLatestNewsSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Latest News',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        _buildLatestNewsCard(),
      ],
    );
  }

  Widget _buildLatestNewsCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          image: const DecorationImage(
            image: NetworkImage(
                'https://assets.vogue.com/photos/67379a3b06d29ab86f602f82/16:9/w_1920%2Cc_limit/IMG_7617.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 20,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'by Jono',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Doechii Gets an A+ for Tour Style',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButtons() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            CategoryButton(label: 'New Arrivals', isActive: true),
            CategoryButton(label: 'Top'),
            CategoryButton(label: 'Bottom'),
            CategoryButton(label: 'Shoes'),
            CategoryButton(label: 'Accessories'),
          ],
        ),
      ),
    );
  }

  Widget _buildNewsList() {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          NewsItem(
            title: "Danielle Frankel’s New Bridal Shoes Are Like Works of Art",
            author: 'Farhan',
            date: 'Sunday, 15 November 2024',
            imageUrl:
                'https://assets.vogue.com/photos/66bce35e4133ea59445cb884/master/w_1920,c_limit/IMG_7963_Final_sRGB.jpg',
          ),
          NewsItem(
            title: 'Penny Singer’s Ribbon Shirts Are Sewn With Stories',
            author: 'Farhan',
            date: 'Monday, 15 November 2024',
            imageUrl:
                'https://assets.vogue.com/photos/664dfad6c079988084c10974/master/w_1920,c_limit/00_story.png',
          ),
        ],
      ),
    );
  }
}
