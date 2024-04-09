import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intern/utils/color.dart';
import 'package:intern/widget/morphism.dart';

class Description extends StatefulWidget {
  final Map coffees;
  const Description({super.key, required this.coffees});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  List<Map> choices = [
    {"name": "Skim Milk", "bool": false},
    {"name": "Full Cream Milk", "bool": false},
    {"name": "Almond Milk", "bool": false},
    {"name": "Full Cream Milk", "bool": false},
    {"name": "Soy Milk", "bool": false},
    {"name": "Oat Milk", "bool": false},
    {"name": "Lactose Free Milk", "bool": false}
  ];
  // List<Map> filling = [
  //   {"name": "Skim Milk", "bool": false},
  //   {"name": "Full Cream Milk", "bool": false},
  //   {"name": "Almond Milk", "bool": false},
  //   {"name": "Full Cream Milk", "bool": false},
  //   {"name": "Soy Milk", "bool": false},
  //   {"name": "Oat Milk", "bool": false},
  //   {"name": "Lactose Free Milk", "bool": false}
  // ];
  bool rem = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  widget.coffees["path"],
                  height: 320.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 320.h,
                  width: double.infinity,
                  color:
                      const Color.fromARGB(255, 131, 130, 130).withOpacity(0.4),
                )
              ],
            ),
            Container(
              width: double.infinity,
             // height: 500.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/images/login background.jpeg",
                      ))),
              child: GlassMorphism(
                blur: 10,
                opacity: 0.05,
                borderradius: 0,
                child: Padding(
                  padding: EdgeInsets.all(20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //first
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.coffees["name"],
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 197, 197, 197),
                                    letterSpacing: 0.5,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '4.9 ⭐  (458)',
                                    style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 147, 147, 147),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Image.asset(
                                    "assets/images/veg.png",
                                    height: 15.h,
                                    width: 15.h,
                                    fit: BoxFit.fill,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      //about

                      Text(
                        widget.coffees["about"],
                        style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                       Text(
                        "Choice of Cup Filling",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10.h,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Container(
                            padding: EdgeInsets.all(5.h),
                            height: 25.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              color:Colors.grey,
                            ),
                            alignment: Alignment.center,
                            child: Text("Full",style: TextStyle(fontSize: 14.sp,color: primaryColor),),
                          ),
                          Container(
                            padding: EdgeInsets.all(5.h),
                            height: 25.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              color:Colors.green,
                            ),
                            alignment: Alignment.center,
                            child: Text("1/2 Full",style: TextStyle(fontSize: 14.sp,color: primaryColor),),
                          ),
                          Container(
                            padding: EdgeInsets.all(5.h),
                            height: 25.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              color:Colors.grey,
                            ),
                            alignment: Alignment.center,
                            child: Text("1/3 Full",style: TextStyle(fontSize: 14.sp,color: primaryColor),),
                          ),
                          Container(
                            padding: EdgeInsets.all(5.h),
                            height: 25.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              color:Colors.grey,
                            ),
                            alignment: Alignment.center,
                            child: Text("1/4 Full",style: TextStyle(fontSize: 14.sp,color: primaryColor),),
                          ),
                         
                        ],
                      ),

                      SizedBox(height: 10.h,),

                      Text(
                        "Choice of Milk",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        height: 100.h,
                        // width: double.infinity,
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.all(0),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 0,
                            mainAxisSpacing: 2,
                            childAspectRatio: 7,
                          ),
                          itemCount: choices.length,
                          itemBuilder: (context, index) => SizedBox(
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    choices[index]["bool"] =
                                        !choices[index]["bool"];
                                    setState(() {});
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(2.h),
                                    height: 16.h,
                                    width: 27.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        color: choices[index]["bool"]
                                            ? Colors.green
                                            : Colors.grey),
                                    alignment: !choices[index]["bool"]
                                        ? Alignment.centerLeft
                                        : Alignment.centerRight,
                                    child: Container(
                                      height: 12.h,
                                      width: 12.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          color: choices[index]["bool"]
                                              ? Colors.green
                                              : Colors.grey,
                                          border: Border.all(
                                              color: Colors.white, width: 2)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  choices[index]["name"],
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color.fromARGB(
                                          255, 193, 192, 192),
                                      fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                       SizedBox(height: 10.h,),

                      Text(
                        "Choice of Milk",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10.h,),
                      Row(//mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    rem=!rem;
                                    setState(() {});
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(2.h),
                                    height: 16.h,
                                    width: 27.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        color: rem
                                            ? Colors.green
                                            : Colors.grey),
                                    alignment: rem
                                        ? Alignment.centerLeft
                                        : Alignment.centerRight,
                                    child: Container(
                                      height: 12.h,
                                      width: 12.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          color: rem
                                              ? Colors.green
                                              : Colors.grey,
                                          border: Border.all(
                                              color: Colors.white, width: 2)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text("Sugar X1"
                                  ,
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color.fromARGB(
                                          255, 193, 192, 192),
                                      fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 70.w,),
                          SizedBox(
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    rem=!rem;
                                    setState(() {});
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(2.h),
                                    height: 16.h,
                                    width: 27.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        color: rem
                                            ? Colors.green
                                            : Colors.grey),
                                    alignment: rem
                                        ? Alignment.centerLeft
                                        : Alignment.centerRight,
                                    child: Container(
                                      height: 12.h,
                                      width: 12.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          color: rem
                                              ? Colors.green
                                              : Colors.grey,
                                          border: Border.all(
                                              color: Colors.white, width: 2)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text("Sugar X2"
                                  ,
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color.fromARGB(
                                          255, 193, 192, 192),
                                      fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height:10.h,),
                      Row(//mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    rem=!rem;
                                    setState(() {});
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(2.h),
                                    height: 16.h,
                                    width: 27.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        color: rem
                                            ? Colors.green
                                            : Colors.grey),
                                    alignment: rem
                                        ? Alignment.centerLeft
                                        : Alignment.centerRight,
                                    child: Container(
                                      height: 12.h,
                                      width: 12.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          color: rem
                                              ? Colors.green
                                              : Colors.grey,
                                          border: Border.all(
                                              color: Colors.white, width: 2)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text("1/2 Sugar"
                                  ,
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color.fromARGB(
                                          255, 193, 192, 192),
                                      fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                          ),
                           SizedBox(width: 65.w,),
                          SizedBox(
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    rem=!rem;
                                    setState(() {});
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(2.h),
                                    height: 16.h,
                                    width: 27.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        color: rem
                                            ? Colors.green
                                            : Colors.grey),
                                    alignment: rem
                                        ? Alignment.centerLeft
                                        : Alignment.centerRight,
                                    child: Container(
                                      height: 12.h,
                                      width: 12.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          color: rem
                                              ? Colors.green
                                              : Colors.grey,
                                          border: Border.all(
                                              color: Colors.white, width: 2)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text("No Sugar "
                                  ,
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color.fromARGB(
                                          255, 193, 192, 192),
                                      fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(height: 10.h,),
            Container(
              padding: EdgeInsets.symmetric(vertical:10.h,horizontal: 20.w),
              height: 60.h,
              width: 320.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Colors.black.withOpacity(0.4),
              ),
              child:Row(
                children: [
                  SvgPicture.asset("assets/images/rectangle.svg"),
                  SizedBox(width: 20.w,),
                const  Text("High priority",style: TextStyle(color:  Color.fromARGB(255, 198, 196, 196)),),
                SizedBox(width: 40.w,),
                Container(
                  height: 35.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    gradient:const LinearGradient(colors:[Colors.green,Color.fromARGB(255, 112, 205, 115),]),
                    borderRadius: BorderRadius.circular(10.r)
                  ),
                  alignment: Alignment.center,
                  child:const Text("Submit",style: TextStyle(fontWeight: FontWeight.w600),),
                ),
                ],
              ) ,
            )
                    ],
                  ),
                ),
              ),
            ),
            

          ],
        ),
      ),
    );
  }
}
