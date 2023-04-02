
import 'package:flutter/material.dart';
// text form feild  widget
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.black,
                  enabled: true,
                  style: TextStyle(fontSize:18,color: Colors.green ),
                decoration: InputDecoration(
                filled: false,
                  prefixIcon: Icon(Icons.email),
                   // icon:Icon(Icons.add),

                  fillColor: Colors.grey.withOpacity(.3),
                  hintText: 'Email',
                //  labelText: 'Email',
                  hintStyle: TextStyle(fontSize:14,color: Colors.grey.shade600),
                  enabledBorder: OutlineInputBorder(
                      borderSide:BorderSide(color:Colors.teal,width:1),
                    borderRadius:  BorderRadius.circular(10)
                  ),
                    errorBorder: OutlineInputBorder(
                        borderSide:BorderSide(color:Colors.teal,width:1),
                        borderRadius:  BorderRadius.circular(10)
                    ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:BorderSide(color:Colors.teal,width:2),
                  borderRadius:  BorderRadius.circular(10)
                )
                ),
                onChanged: (value){
                  print(value);
                },
              ),
            )

          ],
        ),
      ),
    );
  }
}