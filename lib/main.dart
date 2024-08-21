import 'package:flutter/material.dart';
import 'package:projects/Pages/bottomnav.dart';

import 'Pages/HomePage.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Food App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFF0B2),
      ),
      // routes: {
       //    "/" : (context)=>Homepage(),
       //},
      home: BottomNav(),
     );
  }
}