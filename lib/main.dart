import 'package:flutter/material.dart';
import 'package:house_rent/screens/home/home_screen.dart';
import 'package:house_rent/screens/auth/login_page.dart';
import 'package:house_rent/screens/house_list/house_list_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SAFby',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/login',
      routes:{
        '/' : (context) => HomeScreen(),
        '/rent-house' : (context) => HouseListScreen(),
        '/login' : (context) => LoginPage(),
      }
    );
  }
}