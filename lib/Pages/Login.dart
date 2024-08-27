import 'package:flutter/material.dart';
import 'package:projects/Pages/Signup.dart';
import 'package:projects/Widgets/widget_support.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
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
            decoration: const BoxDecoration(
              color: Color(0xFFFFF0B2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: const Text(""),
          ),
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      "images/logo.png",
                      width: MediaQuery.of(context).size.width / 1.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  Material(
                    elevation: 20.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10.0),
                          Text(
                            "Log In",
                            style: AppWidget.HeadlineTextFeildStyle(),
                          ),

                          const SizedBox(height: 30.0),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: AppWidget.SoldtTextFeildStyle(),
                              prefixIcon: const Icon(
                                Icons.mail_outline,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(height: 30.0),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: AppWidget.SoldtTextFeildStyle(),
                              prefixIcon: const Icon(
                                Icons.password_outlined,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(height: 30.0),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              "Forgot Password",
                              style: AppWidget.UnderlineTextFeildStyle(),
                            ),
                          ),
                          const SizedBox(height: 30.0),
                          Material(
                            elevation: 20.0,
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 20.0),
                              width: 200,
                              decoration: BoxDecoration(
                                color: const Color(0xffff5722),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Center(
                                child: Text(
                                  "SIGN UP",
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
                          const SizedBox(height: 30.0),  // Reduced the height to prevent overflow
                          Container(
                            padding: EdgeInsets.only(left: 25,bottom: 10) ,
                            child: Row(
                              children: [
                                Text("Don't have an account?",
                                  style: AppWidget.SoldtTextFeildStyle(),),

                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Signup()));
                                  },
                                  child: Text(" Sign Up",
                                    style: AppWidget.UnderlineTextFeildStyle(),

                                  ),
                                ),
                              ],
                            ),
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

