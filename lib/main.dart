import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern/screen/login.dart';
import 'package:intern/utils/color.dart';
import 'package:intern/utils/screendimension.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: AppDimensions.screenSize,
        minTextAdapt: true,
        builder: (context, child) => Material(
          child: MaterialApp(
             debugShowCheckedModeBanner: false,
           theme: ThemeData.dark().copyWith(
                scaffoldBackgroundColor:
                    mobileBackgroundColor, //copywith used to set theme for selected widget
              ),
            home: LoginScreen(),
          ),
        ),
        );
  }
}


