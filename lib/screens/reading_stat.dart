import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:user_list_app/widgets/add_friends_button.dart';
import 'package:user_list_app/widgets/badge_card.dart';
import 'dart:convert';
import '../widgets/progress_card.dart';
import '../widgets/time_card.dart';
import '../widgets/streak_card.dart';
import '../widgets/level_card.dart';

class ReadingStatsScreen extends StatefulWidget {
  @override
  _ReadingStatsScreenState createState() => _ReadingStatsScreenState();
}

class _ReadingStatsScreenState extends State<ReadingStatsScreen> {
  int progressNumber = 0;

  @override
  void initState() {
    super.initState();
    fetchProgressNumber();
  }

  Future<void> fetchProgressNumber() async {
    final response = await http.get(Uri.parse('https://www.randomnumberapi.com/api/v1.0/random?min=100&max=1000&count=1'));
    if (response.statusCode == 200) {
      setState(() {
        progressNumber = json.decode(response.body)[0];
      });
    } else {
      throw Exception('Failed to load progress number');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 40),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.girl_rounded, color: Colors.white,),
                Text(
                  "Amy's reader stats",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Icon(Icons.rectangle_rounded, color: Colors.white,),
                SizedBox(width: 10,),
                const Text(
                  "War and Peace",
                  style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.add, color: Colors.white,),
              ],
            ),
            const SizedBox(height: 10),
            ProgressCard(progressNumber: progressNumber),
            Row(
              children: [
                TimeCard(),
                StreakCard(),
              ],
            ),
            
            Row(
              children: [
                LevelCard(),
                BadgesCard(),
              ],
            ),
            
            const SizedBox(height: 10),
            Row(
              children: [
                AddFriendsButton(),
                const SizedBox(width: 20,),
                const Icon(Icons.file_upload_outlined,color: Colors.white,),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Leaderboard',
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
