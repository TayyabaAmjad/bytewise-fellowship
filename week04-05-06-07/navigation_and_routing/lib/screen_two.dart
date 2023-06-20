import 'package:flutter/material.dart';
import 'package:navigation_and_routing/utils/routes_name.dart';

import 'screen_three.dart';

class ScreenTwo extends StatefulWidget {
  dynamic data;


  //static const String id ='screen_two';

  // final String name;
  // final int num;
   ScreenTwo({Key? key,
    required this.data

    // required this.name,
    //      this.num=7
  }) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
   // final arguments =ModalRoute.of(context)!.settings.arguments as Map ;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.data['Node'])),
        //Center(child: Text(arguments['name'])),
        // Center(child: Text(widget.name.toString()+" "+widget.num.toString())),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            InkWell (
              onTap: (){
                Navigator.pushNamed(context, RouteName.screenThree

                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ScreenThree(
                //

                      // name: arguments['name'],
                      // num: arguments['age'],
                  //  ))
                );

              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration:const  BoxDecoration(
                    color: Colors.purple
                ),
                child:const Center(
                  child: Text('Screen 2'),
                ) ,
              ),
            )
          ],
        ),
      ),
    );
  }
}
