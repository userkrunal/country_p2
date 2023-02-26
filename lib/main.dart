import 'package:country_p2/Home_Screen/Home.dart';
import 'package:country_p2/Home_Screen/country_UI.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        "/":(context) => HomeScreen(),
        "UI":(context) => Country_UI(),
      },
    ),
  );
}