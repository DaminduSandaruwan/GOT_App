import 'package:flutter/material.dart';
import 'package:got_charc/pages/main_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GAME OF THE THRONES',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        canvasColor: Colors.black,
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Colors.grey[700],
        ),
      ),
      home: CharacterListingScreen(),
    );
  }
}

