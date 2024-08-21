import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:projects/Pages/HomePage.dart';
import 'package:projects/Pages/order.dart';
import 'package:projects/Pages/profile.dart';
import 'package:projects/Pages/wallet.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTableIndex=0;

  late List<Widget> pages;
  late Widget currentpage;
  late Homepage homepage;
  late wallet walletpage;
  late order orderpage;
  late profile profilepage;

  @override
  void initState() {
    homepage=Homepage();
    walletpage=wallet();
    orderpage=order();
    profilepage=profile();
    pages= [homepage, orderpage , walletpage , profilepage];


    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 70.0,
          backgroundColor: Color(0xFFFFF0B2),

          animationDuration: Duration(milliseconds: 400),
          onTap: (int index) {
            setState(() {
              currentTableIndex = index;
            });
          },
          items: [
        Icon(
            Icons.home_outlined,
            color: Colors.black,
        ),
        Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
        ),
        Icon(
          Icons.wallet_outlined,
          color: Colors.black,
        ),
        Icon(
          Icons.person_outlined,
          color: Colors.black,
        )
      ]),
      body: pages[currentTableIndex],
    );
  }
}
