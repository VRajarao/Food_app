import 'package:flutter/material.dart';
class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0,left: 20.0,right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          GestureDetector(
            onTap: (){
            Navigator.pop(context);
      },
          child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,)),
          Image.asset("images/salad2.png",width: MediaQuery.of(Context).width.size,)
      ],
      ),
      ),
    );
  }
}
