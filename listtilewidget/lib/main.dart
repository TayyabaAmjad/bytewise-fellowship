
import 'package:flutter/material.dart';
// text form feild  and list view builder widget
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

            Expanded(
                child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context,index){
                    return const ListTile(
                      leading:  CircleAvatar(
                        backgroundColor: Colors.black,
                        backgroundImage:NetworkImage('https://images.pexels.com/photos/432059/pexels-photo-432059.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1/photos/14656105/pexels-photo-14656105.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1') ,

                      ),
                      title: Text('Tayyaba'),
                      subtitle: Text('heyy'),
                      trailing: Text('10:52 PM'),
                    );
                  },
                ),
            )

          ],
        ),
      ),
    );
  }
}