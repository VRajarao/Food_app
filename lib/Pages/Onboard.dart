import 'package:flutter/material.dart';
import 'package:projects/Pages/Signup.dart';
import 'package:projects/Widgets/widget_support.dart';

import '../Widgets/Content_model.dart';
class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int currentIndex=0;
  late PageController _controller;

  @override
  void initState(){

    _controller= PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose(){
    super.dispose();

    super.dispose();   _controller.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: PageView.builder(
            controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index){
              setState(() {
                currentIndex=index;
              });
              },
              itemBuilder: (_, i){
            return Padding(padding: EdgeInsets.only(top: 40,right: 20,left: 20),
                child:Column(children: [
                    Image.asset(contents[i].image,
                    height: 450,
                    width:MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                    ),
                  SizedBox(height: 40.0),
                  Text(contents[1].title,style: AppWidget.semiBoldTextFeildStyle(),),
                  SizedBox(height: 40.0),
                  Text(contents[1].descrption,style: AppWidget.LightTextFeildStyle(),),
          
                ])
            );
          }),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(contents.length,(index)=>
              buildDot(index,context),

          ),
        )
        ),
        GestureDetector(
          onTap: (){
            if(currentIndex==contents.length-1){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Signup()));
            }
            _controller.nextPage(duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
          },
          child: Container(
            decoration: BoxDecoration(color: Colors.red , borderRadius: BorderRadius.circular(20)),
            height: 60.0,
            width: double.infinity,
            margin: EdgeInsets.all(40),
            child: Center(
                child: Text(currentIndex==contents.length-1?"START" :"NEXT",
                    style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold))),
          ),
        )

        ],
      ),
    );

  }
  Container buildDot(
      int index,BuildContext context){
    return Container(
      height: 10.0,
      width: currentIndex==index?18:7,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.black),
    );
  }

}
