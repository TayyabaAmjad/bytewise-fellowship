import 'package:flutter/material.dart';
//divider and size box
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const[
            SizedBox(
              height: 100,
            ),
            Divider(color: Colors.black,thickness: .5,),
            SizedBox(
              height: 100,
              child:VerticalDivider(color: Colors.black,) ,
            ),

            Center(
              child:  CircleAvatar(
                //maxRadius: 20,
                // minRadius: 10,
                radius: 100,
                backgroundColor: Colors.black,
                //  child: Icon(Icons.person),
                backgroundImage:NetworkImage('https://images.pexels.com/photos/432059/pexels-photo-432059.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1/photos/14656105/pexels-photo-14656105.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1') ,


              ),
            )
          ],
        ),
      ),
    );
  }
}