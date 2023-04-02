import 'package:flutter/material.dart';
//STACK WIDGET
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lottery App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Stack(
                //alignment: Alignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      height: 180,
                      width: 180,
                      color: Colors.green,
                    ),
                  ),
                  Positioned(
                      top: 100,
                      child:  Text('Tayyaba Amjad')
                  )

                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 90,
                  width: 90,
                  color: Colors.green,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.blue,
                )
                
              ],
            )


          ],
        ),
      ),

    );
  }
}
