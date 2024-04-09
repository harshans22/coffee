import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intern/screen/description.dart';
import 'package:intern/utils/color.dart';
import 'package:intern/widget/morphism.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Map> coffes = [
    {
      "name": "Coffee",
      "type": "Espresso, Steamed Milk",
      "rating": "4.9",
      "number": "458",
      "path": "assets/images/cup.png"
    },
    {
      "name": "Hot Cappucino",
      "type": "Espresso, Steamed Milk",
      "rating": "4.9",
      "number": "458",
      "path": "assets/images/hot cappucino.png"
    },
    {
      "name": "Black Coffee",
      "type": "Espresso, Steamed Milk",
      "rating": "4.5",
      "number": "458",
      "path": "assets/images/black coffee.png"
    },
  ];
  List<Map> coffee2 = [
    {
      "path": "assets/images/latte.png",
      "about":
          "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
      "name": "Lattè"
    },
    {
      "path": "assets/images/flatwhite.png",
      "about":
          "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
      "name": "Flat White"
    }
  ];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //    flexibleSpace: Container(
      //       decoration: BoxDecoration(
      //         image: DecorationImage(
      //           image: AssetImage('assets/images/background.png',),
      //           fit: BoxFit.cover,

      //         ),

      //       ),
      //       ),

      //   title: Row(
      //     children: [
      //       Image.asset("assets/images/wavyhand.png",height:20.h ,)
      //     ],
      //   ),
      // ),
      extendBody: true,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/login background.jpeg"))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GlassMorphism(
                blur: 20,
                opacity: 0.2,
                borderradius: 0,
                child: SafeArea(
                  child: Container(
                    padding: EdgeInsets.all(20.h),
                    // height: 100.h,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/wavyhand.png",
                              height: 30.h,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "   08/04/2024",
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromARGB(
                                          255, 187, 185, 185)),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "   Harsh Singh",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromARGB(
                                          255, 187, 185, 185)),
                                ),
                              ],
                            ),
                            const Expanded(child: SizedBox()),
                            Container(
                              height: 30.h,
                              width: 30.w,
                              padding: EdgeInsets.all(5.h),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 193, 192, 192),
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              child:
                                  SvgPicture.asset("assets/images/dustbin.svg"),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/user.jpeg"),
                            )
                          ],
                        ),

                        SizedBox(
                          height: 20.h,
                        ),
                        //search bar
                        Container(
                          padding: EdgeInsets.all(10.h),
                          height: 50.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.r),
                              color: primaryColor),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.grey,
                                size: 30.h,
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              SizedBox(
                                width: 200.w,
                                child: TextField(
                                  style: const TextStyle(color: Colors.grey),
                                  decoration: InputDecoration(
                                      fillColor: Colors.black,
                                      hintText: "Search Favorite Beverages",
                                      hintStyle: TextStyle(
                                          color: Colors.grey, fontSize: 14.sp)),
                                ),
                              ),
                              const Expanded(child: SizedBox()),
                              SvgPicture.asset("assets/images/settings.svg"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              //second

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 69, 69, 69).withOpacity(0.8),
                  // image: DecorationImage(
                  //   fit: BoxFit.cover,
                  //     image: AssetImage("assets/images/background.png")),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "       Most Popular Beverages",
                      style: TextStyle(
                          color: const Color(0xFFB6B6B6),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 220.h,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: coffes.length,
                          itemBuilder: ((context, index) => Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.w),
                                child: GlassMorphism(
                                  blur: 18,
                                  opacity: 0.2,
                                  borderradius: 10,
                                  child: Container(
                                    // height: 220.h,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20.w, vertical: 20.h),
                                    //  margin: EdgeInsets.symmetric(vertical: 10.w),
                                    //color: Colors.black,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                            child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 25.w),
                                          child: Image.asset(
                                            coffes[index]["path"],
                                            height: 100.h,
                                            width: 100.w,
                                          ),
                                        )),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Text(
                                          coffes[index]["name"],
                                          style: TextStyle(
                                              color: Color(0xFFCDCDCD),
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  coffes[index]["type"],
                                                  style: TextStyle(
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 47, 47, 47),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 10.sp),
                                                ),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                Text(
                                                  '${coffes[index]["rating"]} ⭐  (${coffes[index]["number"]})',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 11.sp,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            SvgPicture.asset(
                                              "assets/images/add.svg",
                                              height: 25.h,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ))),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                  ],
                ),
              ),
              Container(
                color: Color.fromARGB(255, 224, 224, 224).withOpacity(0.4),
                padding: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Get it instantly",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 207, 206, 206),
                          fontSize: 16.sp),
                    ),
                    Container(
                      // color:Colors.black,
                      //alignment: Alignment.topCenter,
                      width: double.infinity,
                      height: coffee2.length * 200.h,
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: coffee2.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) => Padding(
                                padding: EdgeInsets.all(10.h),
                                child: GlassMorphism(
                                  blur: 30,
                                  opacity: 0.2,
                                  borderradius: 10,
                                  child: Container(
                                    padding: EdgeInsets.all(10.h),
                                    child: Row(
                                      //crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                coffee2[index]["name"],
                                                style: TextStyle(
                                                    fontSize: 16.sp,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              SizedBox(
                                                height: 5.h,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '${coffes[index]["rating"]} ⭐  (${coffes[index]["number"]})',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 13.sp,
                                                        fontWeight:
                                                            FontWeight.w400),
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
                                              SizedBox(
                                                height: 5.h,
                                              ),
                                              Text(
                                                coffee2[index]["about"],
                                                maxLines: 4,
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: const Color.fromARGB(
                                                        255, 215, 214, 214)),
                                              ),
                                            ],
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Description(coffees:coffee2[index],)));
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.all(10.h),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10.r),
                                              child: Stack(
                                                children: [
                                                  Image.asset(
                                                    coffee2[index]["path"],
                                                    height: 120.h,
                                                    width: 100.w,
                                                    fit: BoxFit.fill,
                                                  ),
                                                  Positioned(
                                                    left: 25.w,
                                                    bottom: 0,
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.all(3.h),
                                                      width: 50.w,
                                                      height: 25.h,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.r),
                                                          color: const Color
                                                              .fromARGB(255, 79,
                                                              155, 80)),
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "Add",
                                                        style: TextStyle(
                                                            color: primaryColor,
                                                            fontSize: 13.sp),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: Colors.black.withOpacity(0.6),
        onTap: (int val) => setState(() => _index = val),
          currentIndex: _index,
          items: [
            FloatingNavbarItem(icon: Icons.home, title: 'Home'),
            FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
            FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
            FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
          ],
        ),
      

    );
  }
}
