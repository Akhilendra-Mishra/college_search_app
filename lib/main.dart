import 'package:flutter/material.dart';
import 'package:college_search_app/screens/home_screen.dart';
import 'package:college_search_app/screens/college_screen.dart';
import 'package:college_search_app/screens/college_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: HomeScreen(),
      routes: {
        '/colleges': (context) => CollegeScreen(),
        '/collegeDetails': (context) => CollegeDetailsScreen(),
      },
    );
  }
}




