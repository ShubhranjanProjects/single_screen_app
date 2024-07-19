import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BadgesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lightBlue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'BADGES',
                  style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 50,),
                Icon(Icons.file_upload_outlined,color: Colors.white,),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.lightbulb_outline, size: 40,),
                SizedBox(width: 15,),
                Icon(Icons.verified_outlined, size: 40,),
                SizedBox(width: 15,),
                Icon(Icons.timer_outlined, size: 40,)
              ],
            ),
            SizedBox(height: 20,),
             Row(
              children: [
                Icon(Icons.hourglass_empty_outlined, size: 40,),
                SizedBox(width: 15,),
                Icon(Icons.menu_book_outlined, size: 40,),
                SizedBox(width: 15,),
                Icon(Icons.thumb_up_alt_outlined, size: 40,)
              ],
            ),
            SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}
