  import 'package:flutter/material.dart';
  

  class AddFriendsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        //Action on Add Friends button
      },
      child: const Text(
        '+ Add Friends',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(300, 40),
        backgroundColor: Color.fromARGB(255, 93, 104, 114),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
  }