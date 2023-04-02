import 'package:flutter/material.dart';
//rich text widget
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
            RichText(
                text: TextSpan(
              text:'Dont have an account?',
            style:Theme.of(context).textTheme.bodyText1,
    children: [
      TextSpan(text: 'Sign up',style: TextStyle(decoration: TextDecoration.underline,fontWeight:FontWeight.bold,fontSize: 18)),

    ]
            )
            ),
          ],
        ),
      ),
    );
  }
}