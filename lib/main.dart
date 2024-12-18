import 'package:flutter/material.dart';
import 'package:flutter_task2/homeScreen.dart';
import 'package:flutter_task2/itemscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff232227),
       ),
       routes: {
        "homescreen":(context)=>Homescreen(),
         "itemScreen":(context)=>Itemscreen(),
       },
    );
  }
}
