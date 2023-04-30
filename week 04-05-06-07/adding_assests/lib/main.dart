import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(child: Text("I am Galaxy")),
      ),
      body: const Center(
        child: Image(
            image: AssetImage('assests/galaxy.jpg')),
      ),
    ),
  ));
}
