import 'package:flutter/material.dart';
import 'package:projects/Widgets/widget_support.dart';
class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  int a=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 58.5,left: 20.0,right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          GestureDetector(
            onTap: (){
            Navigator.pop(context);
      },
          child: const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,)),
          Image.asset("images/salad2.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2.5,
            fit: BoxFit.fill,),
            const SizedBox(height: 20.0),

            Row(

              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mexsicon salad",style: AppWidget.SoldtTextFeildStyle()),
                    Text("Mexsicom creamy chicken salad",style: AppWidget.SoldtTextFeildStyle()),
                  ],
                ),
               const Spacer(),
                GestureDetector(
                  onTap:() {
                    if(a>1) {
                      --a;
                    }
                      setState(() {
                      });
                  },


                  child: Container(
                  decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(8)),
                    child: const Icon(Icons.remove,color: Colors.black,),
                  ),
                ),
                const SizedBox(width: 20.0,),
                Text(a.toString(),style: AppWidget.semiBoldTextFeildStyle(),),
                const SizedBox(width: 20.0,),
                GestureDetector(
                  onTap: (){
                    ++a;
                    setState(() {

                    });
                  },
                  child: Container(
                    decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(8)),
                    child: const Icon(Icons.add,color: Colors.black,),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20.0,),
            Text("Food is one of the most basic needs for humans, "
                 "along with shelter and clothing. ""It provides the energy and nutrients "
                 "our bodies need to function, grow, and repair tissues.Food is the fuel that keeps us running throughout the day,"
                " and it also supports the body’s metabolic process and ensures we remain healthy."
                " Children need to understand the importa"
                "nce of food to build healthy eating habits in the long term.  ",maxLines: 5,
                 style: AppWidget.LightTextFeildStyle(),),
            const SizedBox(height:20.0),
            Row(children: [
              Text("Delivary Time",style: AppWidget.SoldtTextFeildStyle(),),
              const SizedBox(width: 10.0,),
              const Icon(Icons.alarm,color: Colors.black,),
              Text("25 Minutes",style: AppWidget.SoldtTextFeildStyle(),),
            ],),
            const Spacer(),

            Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Total Price",style: AppWidget.SoldtTextFeildStyle()),
                          Text("\$28",style: AppWidget.SoldtTextFeildStyle()),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        padding: const EdgeInsets.all(7.0),
                        decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(9)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                          const Text("Add To Cart",style: TextStyle(color: Colors.white,fontSize: 18.0,fontFamily: 'poppins'),),
                            const SizedBox(width: 35.0,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: (
                            const Icon(Icons.shopping_cart_outlined,color: Colors.white,)
                            ),
                          )

                        ],)
                      )

                    ],
                  ),


            )
        ],
      ),
      ),
    );
  }
}
