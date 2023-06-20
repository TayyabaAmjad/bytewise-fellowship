import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Center(child: Text("Skills")),
      ),
      body: const Center(
        child: Image(
            image: AssetImage('assests/skill.jpg')),
      ),
    ),
  ));
}
