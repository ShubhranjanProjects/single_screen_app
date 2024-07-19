import 'package:flutter/material.dart';

class LevelCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 214, 142, 227),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child:  Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'LEVEL',
                  style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 65,),
                Icon(Icons.file_upload_outlined,color: Colors.white,),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.circle_outlined, size: 40),
                Text(
                  '2',
                  style: TextStyle(color: Colors.black, fontSize: 48, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              '145 reader points to\nlevel up!\nTop 5% for this book',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
