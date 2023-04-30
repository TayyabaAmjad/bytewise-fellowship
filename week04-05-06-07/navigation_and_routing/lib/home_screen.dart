import 'package:flutter/material.dart';
import 'package:navigation_and_routing/utils/routes_name.dart';
// import 'screen_two.dart';

class HomeScreen extends StatefulWidget {
 // static const String id ='home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text('Subscribe')),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            InkWell (
              onTap: (){
                Navigator.pushNamed(context, RouteName.screenTwo,
              arguments: {
                  'Node':'Js Module',
                'Flutter':'Good for apps'
              }



              //  Navigator.pushNamed(context, ScreenTwo.id,

                // arguments: {
                //   'name':'Tayyaba',
                //   'age': 21
                // }
                );

                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ScreenTwo(
                //       name:"Tayyaba"  ,
                //     ))
                //     );

              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration:const  BoxDecoration(
                    color: Colors.purple
                ),
                child:const Center(
                  child: Text('Screen 1'),
                ) ,
              ),
            )
          ],
        ),
      ),
    );
  }
}

