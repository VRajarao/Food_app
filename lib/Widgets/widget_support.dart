
import 'package:flutter/material.dart';

class AppWidget{
  static TextStyle SoldtTextFeildStyle(){
    return const TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontWeight: FontWeight.bold ,
        fontFamily: "Poppins"
    );
  }
  static TextStyle UnderlineTextFeildStyle(){
    return const TextStyle(
        color: Colors.blueAccent,
        fontSize: 20.0,
        fontWeight: FontWeight.bold ,
        fontFamily: "Poppins",
        decoration: TextDecoration.underline,

    );
  }
  static TextStyle HeadlineTextFeildStyle(){
    return const TextStyle(
        color: Colors.black,
        fontSize: 29.0,
        fontWeight: FontWeight.bold ,
        fontFamily: "Poppins"
    );
  }

  static TextStyle LightTextFeildStyle(){
    return const TextStyle(
        color: Colors.black38,
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        fontFamily: "Poppins"
    );
  }
  static TextStyle semiBoldTextFeildStyle(){
    return const TextStyle(
        color: Colors.black,
        fontSize: 16.0,
        fontWeight: FontWeight.bold ,
        fontFamily: "Poppins"
    );
  }
}