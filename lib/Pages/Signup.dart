import 'package:flutter/material.dart';

import 'package:projects/Widgets/widget_support.dart';class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFff5c30),
                  Color(0xFFe74b1a),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFFFFF0B2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Text(""),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      "images/logo.png",
                      width: MediaQuery.of(context).size.width / 1.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Material(
                    elevation: 20.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10.0),
                          Text(
                            "SingUp",
                            style: AppWidget.HeadlineTextFeildStyle(),
                          ),
                          SizedBox(height: 30.0),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Mail",
                              hintStyle: AppWidget.SoldtTextFeildStyle(),
                              prefixIcon: Icon(
                                Icons.mail_outline,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(height: 30.0),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: AppWidget.SoldtTextFeildStyle(),
                              prefixIcon: Icon(
                                Icons.password_outlined,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(height: 30.0),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              "Forgot Password",
                              style: AppWidget.semiBoldTextFeildStyle(),
                            ),
                          ),
                          SizedBox(height: 30.0),
                          Material(
                            elevation: 20.0,
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 20.0),
                              width: 200,
                              decoration: BoxDecoration(
                                color: Color(0xffff5722),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  "LogIn",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30.0),  // Reduced the height to prevent overflow
                          Text(
                            "Don't have an account? Sign up",
                            style: AppWidget.SoldtTextFeildStyle(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
