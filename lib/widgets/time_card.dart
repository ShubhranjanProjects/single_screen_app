import 'package:flutter/material.dart';

class TimeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child:  Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'TIME',
                  style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 60,),
                Card(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.file_upload_outlined,color: Colors.white,size: 30,)),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.access_time_outlined, size: 30,),
                Text(
                  '6:24',
                  style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              'Global avg. read time\nfor your progress 7:28\n23% faster',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
