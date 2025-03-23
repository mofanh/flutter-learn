import 'package:flutter/material.dart';
import 'package:try_app/pages/HomePage.dart';
import 'package:try_app/pages/SettingsPage.dart';
import 'package:try_app/pages/one.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: One(),
      routes: {
        '/one': (context) => One(),
        '/home': (context) => HomePage(),
        '/settings': (context) => SettingsPage(),
      },
      // home: Scaffold(
      //   // backgroundColor: Colors.deepPurple[200],
      //   // appBar: AppBar(
      //   //   title: Text('App Bar', style: TextStyle(color: Colors.white)),
      //   //   centerTitle: true,
      //   //   backgroundColor: Colors.deepPurple,
      //   //   elevation: 0,
      //   //   leading: Icon(Icons.menu, color: Colors.white),
      //   //   actions: [
      //   //     IconButton(
      //   //       onPressed: () {},
      //   //       icon: Icon(Icons.logout),
      //   //       color: Colors.white,
      //   //     ),
      //   //   ],
      //   // ),
      //   body: Center(
      //     child: GestureDetector(
      //       onTap: userTap,
      //       child: Container(
      //         height: 200,
      //         width: 200,
      //         color: Colors.deepPurple[200],
      //         child: Center(
      //           child: Text(
      //             'Tap Me',
      //             style: TextStyle(
      //               color: Colors.white,
      //               fontSize: 20,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
