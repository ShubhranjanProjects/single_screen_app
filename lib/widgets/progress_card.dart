import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
  final int progressNumber;

  const ProgressCard({Key? key, required this.progressNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.yellow,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              children: [
                Text(
                  'PROGRESS',
                  style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Card(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.file_upload_outlined,color: Colors.white,size: 30,)),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.chrome_reader_mode_outlined, size: 40),
                const SizedBox(width: 10),
                Text(
                  '$progressNumber',
                  style: const TextStyle(color: Colors.black, fontSize: 48, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 20),
                const Text(
              'Out of 1,225 pages\n#5 among friends',
              style: TextStyle(color: Colors.black),
            ),
              ],
            ),
            
            const SizedBox(height: 10),
            Row(
              children: List.generate(5, (index) => const CircleAvatar(
                backgroundImage: NetworkImage('https://via.placeholder.com/40'),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
