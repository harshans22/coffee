import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern/screen/homescreen.dart';
import 'package:intern/utils/color.dart';
import 'package:intern/widget/morphism.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 35.w),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login background.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(),
            ),

            //creating glass morphism
            GlassMorphism(
                blur: 18,
                opacity: 0.2,
                borderradius: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  height: 650.h,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/aaplogo.png",
                        height: 60.h,
                        width: 80.w,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Swift",
                        style: TextStyle(
                            fontSize: 45.sp, fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "Café",
                        style: TextStyle(
                            fontSize: 30.sp, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Latte but never late",
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xFFABABAB),
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.grey.withOpacity(0.7),
                              offset: const Offset(5.0, 5.0),
                            ),
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.grey.withOpacity(0.7),
                              offset: Offset(-5.0, -5.0),
                            ),
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.grey.withOpacity(0.7),
                              offset: Offset(5.0, -5.0),
                            ),
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.grey.withOpacity(0.7),
                              offset: Offset(-5.0, 5.0),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "   User Name",
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300)),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "   Password",
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300)),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Homescreen()));
                        },
                        child: Container(
                          height: 40.h,
                          width: 200.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              gradient: const LinearGradient(colors: [
                                Color(0xFF4D2B1A),
                                Color(0xFFA7745A)
                              ])),
                          alignment: Alignment.center,
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 40.h,
                        width: 200.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(color: primaryColor)),
                        alignment: Alignment.center,
                        child: Text(
                          "Signup",
                          style: TextStyle(fontSize: 18.sp),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Privacy Policy",
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                    ],
                  ),
                )),

            Flexible(
              flex: 2,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}

