import 'package:flutter/material.dart';
import 'package:ui1/screen/view/page1.dart';
import 'package:ui1/screen/view/page2.dart';
import 'package:ui1/screen/view/page3.dart';


void main()
{

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Page1(),
        '2':(context) => Page2(),
        '3':(context) => Page3(),
      },
    )
  );
}