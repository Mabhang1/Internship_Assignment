import 'package:assignment_flutter/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(dash());
}

class dash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: dashHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class dashHome extends StatefulWidget {
  @override
  _dashHomestate createState() => _dashHomestate();
}

class _dashHomestate extends State<dashHome> {
  int _selectedIndex = 0;

  // List of icons for the bottom navigation bar
  final List<IconData> _icons = [
    Icons.home,
    Icons.favorite,
    Icons.receipt,
    Icons.person,
  ];

  // List of titles for the bottom navigation bar
  final List<String> _titles = [
    'Home',
    'Wishlist',
    'Orders',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'purva',
          style: TextStyle(
            color: c1
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: c1),
            onPressed: () {
            
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _icons[_selectedIndex],
              size: 100,
              color: _selectedIndex == 0 ? Colors.orange[600] : Colors.grey,
            ),
            SizedBox(height: 16),
            Text(
              _titles[_selectedIndex],
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: List.generate(
          _icons.length,
          (index) => BottomNavigationBarItem(
            icon: Icon(
              _icons[index],
              color: _selectedIndex == index
                  ? Colors.orange[600]
                  : Colors.grey,
            ),
            label: _titles[index],
          ),
        ),
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        backgroundColor: c1,
        child: Icon(Icons.shopping_cart, size: 32.0),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
