import 'package:flutter/material.dart';
import 'package:projects/Pages/details.dart';
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
         margin: const EdgeInsets.only(top: 50.0,left: 20.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children:<Widget>[
             Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text("Hello Raja,",
             style: AppWidget.SoldtTextFeildStyle()
                 ),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  padding: const EdgeInsets.all(3),
                 decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
                 child: const Icon(Icons.shopping_cart ,color: Colors.white),

                 )
               ],
             ),
             const SizedBox(height: 20.0,),
             Text("Delicious Food",
                 style: AppWidget.HeadlineTextFeildStyle(),
             ),
             Text("Discover Your Great Food And Get",
               style: AppWidget.LightTextFeildStyle() ,
             ),
             const SizedBox(height: 18.0,),
                Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: showItem()
                ),
                  const SizedBox(height: 25.0,),


             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(
                 children: [
                 GestureDetector(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const details()));
                   },
                   child: Container(
                     margin: const EdgeInsets.all(10),
                     child: Material(
                       elevation: 5.0,
                       borderRadius: BorderRadius.circular(20.0),
                       child: Container(
                         padding: const EdgeInsets.all(15),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                           Image.asset("images/salad2.png", height: 150,width: 150,fit: BoxFit.cover),
                           Text("Vigge taco hash",style: AppWidget.SoldtTextFeildStyle()),
                             const SizedBox(height: 5.0,),
                           Text("healthy and Good",style: AppWidget.LightTextFeildStyle()),
                             const SizedBox(height: 5.0,),
                             Text("\$25",style: AppWidget.SoldtTextFeildStyle())
                         ],),
                       ),
                     ),
                   ),
                 ),

                 GestureDetector(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const details()));
                   },
                   child: Container(
                     margin: const EdgeInsets.all(10),
                     child: Material(
                       elevation: 5.0,
                       borderRadius: BorderRadius.circular(20.0),
                       child: Container(
                         padding: const EdgeInsets.all(15),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Image.asset("images/salad2.png", height: 150,width: 150,fit: BoxFit.cover),
                             Text("Vigge taco hash",style: AppWidget.SoldtTextFeildStyle()),
                             const SizedBox(height: 5.0,),
                             Text("healthy and Good",style: AppWidget.LightTextFeildStyle()),
                             const SizedBox(height: 5.0,),
                             Text("\$25",style: AppWidget.SoldtTextFeildStyle())
                           ],),
                       ),
                     ),
                   ),
                 ),

                   Container(
                     margin: const EdgeInsets.all(10),
                     child: Material(
                       elevation: 10.0,
                       borderRadius: BorderRadius.circular(20.0),
                       child: Container(
                         padding: const EdgeInsets.all(15),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Image.asset("images/salad2.png", height: 150,width: 150,fit: BoxFit.cover),
                             Text("Vigge taco hash",style: AppWidget.SoldtTextFeildStyle()),
                             const SizedBox(height: 5.0,),
                             Text("healthy and Good",style: AppWidget.LightTextFeildStyle()),
                             const SizedBox(height: 5.0,),
                             Text("\$25",style: AppWidget.SoldtTextFeildStyle())
                           ],),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
              const SizedBox(height: 30.0,),

             SingleChildScrollView(
                 scrollDirection: Axis.vertical,
               child: Column(
                 children: [
                   Container(
                     margin: const EdgeInsets.only(right:20),
                       child: Material(
                          elevation: 15.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: const EdgeInsets.all(5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Image.asset("images/salad2.png",height: 100,width: 100,fit: BoxFit.cover,),
                            const SizedBox(width: 20.0,),
                            Column(children: [
                              Container(
                                width: MediaQuery.of(context).size.width/2,
                                  child: Text("Salad makes it good",style: AppWidget.SoldtTextFeildStyle(),)
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width/2,
                                  child: Text("Simpel good healthy food",style: AppWidget.LightTextFeildStyle(),)
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width/2,
                                  child: Text("\$28",style: AppWidget.SoldtTextFeildStyle(),)
                              )
                            ],)
                          ],
                          ),
                        ),
                      ),
                   ),

                   const SizedBox(height: 20.0,),

                   Container(
                     margin: const EdgeInsets.only(right:20),
                     child: Material(
                       elevation: 15.0,
                       borderRadius: BorderRadius.circular(20),
                       child: Container(
                         padding: const EdgeInsets.all(5),
                         child: Row(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Image.asset("images/salad2.png",height: 100,width: 100,fit: BoxFit.cover,),
                             const SizedBox(width: 20.0,),
                             Column(children: [
                               Container(
                                   width: MediaQuery.of(context).size.width/2,
                                   child: Text("Salad makes it good",style: AppWidget.SoldtTextFeildStyle(),)
                               ),
                               Container(
                                   width: MediaQuery.of(context).size.width/2,
                                   child: Text("Simpel good healthy food",style: AppWidget.LightTextFeildStyle(),)
                               ),
                               Container(
                                   width: MediaQuery.of(context).size.width/2,
                                   child: Text("\$28",style: AppWidget.SoldtTextFeildStyle(),)
                               )
                             ],)
                           ],
                         ),
                       ),

                     ),
                   ),




                 ],
               ),
             ),



            ],
          ),

        ),
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
                 padding: const EdgeInsets.all(10),
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
                 padding: const EdgeInsets.all(10),
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
                 padding: const EdgeInsets.all(10),
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
                 padding: const EdgeInsets.all(10),
                 child: Image.asset("images/salad.png", height: 40,width: 40,fit: BoxFit.cover,color: salad?Colors.white: Colors.black ,)
             ),
           ),
         ),
       ],
     );
   }

 }
 