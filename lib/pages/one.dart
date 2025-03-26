import 'package:flutter/material.dart';
import 'package:try_app/pages/CounterPage.dart';
import 'package:try_app/pages/HomePage.dart';
import 'package:try_app/pages/ProfilePage.dart';
import 'package:try_app/pages/SettingsPage.dart';
import 'package:try_app/pages/TodoPage.dart';

class One extends StatefulWidget {
  One({super.key});

  @override
  State<One> createState() => _One();
}

class _One extends State<One> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    // HomePage(),
    HomePage(),

    // ProfilePage(),
    ProfilePage(),

    // SettingsPage(),
    // SettingsPage(),

    // CounterPage(),
    // CounterPage(),

    // Todopage(),
    Todopage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.account_circle, size: 48)),
            // home page list
            ListTile(
              title: Text('H O M E'),
              leading: Icon(Icons.home),
              onTap: () {
                // 使用pop使得在返回到首页时drawer不默认弹出
                Navigator.pop(context);

                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              title: Text('T O D O'),
              leading: Icon(Icons.home),
              onTap: () {
                // 使用pop使得在返回到首页时drawer不默认弹出
                Navigator.pop(context);

                Navigator.pushNamed(context, '/todo');
              },
            ),
            // setting list
            ListTile(
              title: Text('S E T T I N G'),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),

          // BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Counter'),
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }
}
