import 'package:flutter/material.dart';

class One extends StatelessWidget {
  const One({super.key});

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
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/two');
          },
          child: Text('Go to Page Two'),
        ),
      ),
    );
  }
}
