import 'package:flutter/material.dart';
import 'package:user_list_app/screens/reading_stat.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reading Stats UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ReadingStatsScreen(),
    );
  }
}
