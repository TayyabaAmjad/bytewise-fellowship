import 'package:flutter/material.dart';
//CONTAINER AND EXPANDED WIDGET
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
            Row(
              children: [
                Expanded(
                  flex: 1,
                    child:  Container(
                  color: Colors.green,
                  height: 250,
                  child: Center(child:Text('Container')),
                )),

                Expanded(
                  flex: 1,
                  child: Container(
                     color: Colors.red,
                       height: 250,
                     child: Center(child:Text('Container')),
     //           Text('Tayyaba Amjad'),

          ),
                ),
            Expanded(
              flex: 1,
              child: Container(
               color: Colors.blue,
                height: 250,
               child: Center(child:Text('Container')),
           ),
            )
          ],
      ),
            Center(
              child: Container(
                height: 250,
                width: 250,
         //transform: Matrix4.rotationZ(.2),
         //      alignment: Alignment.topCenter,
               // margin:  EdgeInsets.only(left:100),
              //  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius:  BorderRadius.circular(10.0),
                    //  topRight:  Radius.circular(50),
                 //   bottomLeft: Radius.circular(50),
                  //  bottomRight: Radius.circular(20),
                //    topLeft: Radius.circular(20),
                 // ),
              //  border: Border.all(
               //   color: Colors.red,
               //   width: 1
               // ),

                    image: DecorationImage(
                      fit:BoxFit.cover,
                      image: NetworkImage('https://images.pexels.com/photos/1252983/pexels-photo-1252983.jpeg?cs=srgb&dl=pexels-lisa-fotios-1252983.jpg&fm=jpg&_gl=1*95e50h*_ga*OTkzNzAzNDU5LjE2ODAyOTA0OTc.*_ga_8JE65Q40S6*MTY4MDI5MDUwMC4xLjEuMTY4MDI5MDY2Ni4wLjAuMA..')
                    ),
                  boxShadow: [
                    BoxShadow(
                    color: Colors.grey,
                  blurRadius: 100
                    )
                  ]
                ),
                child: Center(child:Text('Login')),

              ),
            )
          ],

        ),
      ),
    );
  }
}

