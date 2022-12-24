import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'main_home_screen/auth_screen/login_screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType){
      return MaterialApp(
        title: 'auto master',
          debugShowCheckedModeBanner: false,
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home:LoginScreen()
      );
    });
  }
}

