import 'package:flutter/material.dart';

class StreakCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lightGreen,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child:  Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'STREAK',
                  style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 50,),
               Card(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  child: Icon(Icons.file_upload_outlined,color: Colors.white,size: 20,)),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.flash_on_outlined, size: 40),
                Text(
                  '7',
                  style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              'Day streak, come back\ntomorrow to keep it up!\n19% more consistent',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
