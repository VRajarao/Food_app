import 'package:flutter/material.dart';
import 'package:projects/Widgets/widget_support.dart';
 class Homepage extends StatefulWidget {
   const Homepage({super.key});
 
   @override
   State<Homepage> createState() => _HomepageState();
 }

 class _HomepageState extends State<Homepage> {
   bool icecream = false, pizza = false, burger = false, salad = false;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         margin: EdgeInsets.only(top: 50.0,left: 20.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children:[
             Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text("Hello Raja,",
             style: AppWidget.SoldtTextFeildStyle()
                 ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  padding: EdgeInsets.all(3),
                 decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
                 child: const Icon(Icons.shopping_cart ,color: Colors.white),

                 )
               ],
             ),
             SizedBox(height: 20.0,),
             Text("Delicious Food",
                 style: AppWidget.HeadlineTextFeildStyle(),
             ),
             Text("Discover Your Great Food And Get",
               style: AppWidget.LightTextFeildStyle() ,
             ),
             SizedBox(height: 18.0,),
                Container(
                    margin: EdgeInsets.only(right: 20),
                    child: showItem()
                ),
                  SizedBox(height: 25.0,),


             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(
                 children: [
                 Container(
                   margin: EdgeInsets.all(10),
                   child: Material(
                     elevation: 5.0,
                     borderRadius: BorderRadius.circular(20.0),
                     child: Container(
                       padding: EdgeInsets.all(15),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                         Image.asset("images/salad2.png", height: 150,width: 150,fit: BoxFit.cover),
                         Text("Vigge taco hash",style: AppWidget.SoldtTextFeildStyle()),
                           SizedBox(height: 5.0,),
                         Text("healthy and Good",style: AppWidget.LightTextFeildStyle()),
                           SizedBox(height: 5.0,),
                           Text("\$25",style: AppWidget.SoldtTextFeildStyle())
                       ],),
                     ),
                   ),
                 ),

                 Container(
                   margin: EdgeInsets.all(10),
                   child: Material(
                     elevation: 5.0,
                     borderRadius: BorderRadius.circular(20.0),
                     child: Container(
                       padding: EdgeInsets.all(15),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Image.asset("images/salad2.png", height: 150,width: 150,fit: BoxFit.cover),
                           Text("Vigge taco hash",style: AppWidget.SoldtTextFeildStyle()),
                           SizedBox(height: 5.0,),
                           Text("healthy and Good",style: AppWidget.LightTextFeildStyle()),
                           SizedBox(height: 5.0,),
                           Text("\$25",style: AppWidget.SoldtTextFeildStyle())
                         ],),
                     ),
                   ),
                 ),

                   Container(
                     margin: EdgeInsets.all(10),
                     child: Material(
                       elevation: 5.0,
                       borderRadius: BorderRadius.circular(20.0),
                       child: Container(
                         padding: EdgeInsets.all(15),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Image.asset("images/salad2.png", height: 150,width: 150,fit: BoxFit.cover),
                             Text("Vigge taco hash",style: AppWidget.SoldtTextFeildStyle()),
                             SizedBox(height: 5.0,),
                             Text("healthy and Good",style: AppWidget.LightTextFeildStyle()),
                             SizedBox(height: 5.0,),
                             Text("\$25",style: AppWidget.SoldtTextFeildStyle())
                           ],),
                       ),
                     ),
                   ),
                     Container(
                       child: Row(children: [
                         Image.asset("images/salad2.png",height: 20,width: 20,fit: ,)
                       ],),
                     )
                 ],
               ),
             )
            ]
          )

        )
     );
   }
   Widget showItem() {
     return  Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         GestureDetector(
           onTap: (){
             burger=true;
             icecream=false;
             pizza=false;
             salad=false;
             setState(() {

             });
           },
           child: Material(
             elevation: 5.0,
             borderRadius: BorderRadius.circular(10),
             child: Container(
                 decoration: BoxDecoration(color: burger?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                 padding: EdgeInsets.all(10),
                 child: Image.asset("images/burger.png", height: 40,width: 40,fit: BoxFit.cover,color: burger?Colors.white: Colors.black ,),
             ),
           ),
         ),
         GestureDetector(
           onTap: (){
             burger=false;
             icecream=true;
             pizza=false;
             salad=false;
             setState(() {

             });
           },
           child: Material(
             elevation: 5.0,
             borderRadius: BorderRadius.circular(10),
             child: Container(
                 decoration: BoxDecoration(color: icecream?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                 padding: EdgeInsets.all(10),
                 child: Image.asset("images/icecream.png", height: 40,width: 40,fit: BoxFit.cover,color: icecream?Colors.white: Colors.black ,)
             ),
           ),
         ),
         GestureDetector(
           onTap: (){
             burger=false;
             icecream=false;
             pizza=true;
             salad=false;
             setState(() {

             });
           },
           child: Material(
             elevation: 5.0,
             borderRadius: BorderRadius.circular(10),
             child: Container(
                 decoration: BoxDecoration(color: pizza?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                 padding: EdgeInsets.all(10),
                 child: Image.asset("images/pizza.png", height: 40,width: 40,fit: BoxFit.cover,color: pizza?Colors.white: Colors.black ,)
             ),
           ),
         ),
         GestureDetector(
           onTap: (){
             burger= false;
             icecream=false;
             pizza=false;
             salad=true;
             setState(() {

             });
           },
           child: Material(
             elevation: 5.0,
             borderRadius: BorderRadius.circular(10),
             child: Container(
                 decoration: BoxDecoration(color: salad?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                 padding: EdgeInsets.all(10),
                 child: Image.asset("images/salad.png", height: 40,width: 40,fit: BoxFit.cover,color: salad?Colors.white: Colors.black ,)
             ),
           ),
         ),
       ],
     );
   }

 }
 