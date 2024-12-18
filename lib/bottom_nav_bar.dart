import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 77, 77, 77),
          // borderRadius: BorderRadius.all(Radius.circular(25)),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
             Icon(
              Icons.mail,
              color: Colors.white,
              size: 35,
            ),
          
             Icon(
              Icons.favorite,
              color: Colors.white,
              size: 35,
            ),
          Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 248, 227, 39),
borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(Icons.shopping_cart_rounded,color:Colors.white,size:35),
              ),
             Icon(
              Icons.notifications,
              color: Colors.white,
              size: 35,
            ),
          Icon(
            Icons.person,
            color: Colors.white,
            size: 35,
          )
        ],
      ),
    );
  }
}