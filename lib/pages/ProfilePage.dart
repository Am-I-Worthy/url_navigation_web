import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[400],
      child: Center(child: Text('Profile Page ... :D',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),)),
    );
  }
}