import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: TayyabaCard(),

));

class TayyabaCard extends StatefulWidget {
  @override
  State<TayyabaCard> createState() => _TayyabaCardState();
}

class _TayyabaCardState extends State<TayyabaCard> {
         int tayyabalevel=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Tayyaba ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
         setState(() {
           tayyabalevel += 1;
         });
        },
        child:Icon(Icons.add) ,
        backgroundColor: Colors.grey[850],
      ),
      body:  Padding(
        padding:  EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
        child: Column(
          children:<Widget> [
            Center(
              child: CircleAvatar(
                backgroundImage:NetworkImage('https://images.pexels.com/photos/432059/pexels-photo-432059.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1/photos/14656105/pexels-photo-14656105.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1') ,
                   radius: 40.0,
              ),
            ),
            Divider(
              height: 90,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
    )
              ),
            SizedBox(height: 10,),
            Text(
              'Tayyaba Amjad',
                  style: TextStyle(
                    color: Colors.yellow,
                    letterSpacing: 2,
    )
                  ),
            SizedBox(height: 10),
            Text(
                'Current Tayyaba Level',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2,
                )
            ),
            SizedBox(height: 10),
            Text(
              '$tayyabalevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold
    )
              ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10),
                Text(
                  'tayyaba2021amjad@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () { },
      //   child: Text('click'),
      //   backgroundColor: Colors.red[600],
      //
      // ),
    );

  }
}
// class Test extends StatefulWidget {
//   const Test({Key? key}) : super(key: key);
//
//   @override
//   State<Test> createState() => _TestState();
// }
//
// class _TestState extends State<Test> {
//   int counter =1;
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
