import 'package:flutter/material.dart';
import 'package:navigation_and_routing/screen_two.dart';
import 'package:navigation_and_routing/utils/routes.dart';
import 'package:navigation_and_routing/utils/routes_name.dart';
import 'home_screen.dart';
import 'screen_three.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: RouteName.homeScreen,
    onGenerateRoute: Routes.generateRoute,




    //    home: const HomeScreen() can't use this in routing ,use only in convention method
  // initialRoute: HomeScreen.id,
  //     routes: {
  //         HomeScreen.id : (context) => HomeScreen(),
  //       ScreenTwo.id : (context) => ScreenTwo(),
  //       ScreenThree.id : (context) => ScreenThree(),
  //     },
    );
  }
}


