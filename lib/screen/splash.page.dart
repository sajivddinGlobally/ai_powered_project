import 'package:ai_powered_app/screen/login.page.dart';
import 'package:ai_powered_app/screen/matrimony.screen/start.page.dart';
import 'package:ai_powered_app/screen/resister.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int selectedIndex = 0;

  List<String> backgroundImages = [
    "assets/matrimony.png",
    "assets/job.png",
    "assets/realstate.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            //"assets/matrimony.png",
            backgroundImages[selectedIndex],
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
          Image.asset(
            "assets/bgimage.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
          Positioned(
            bottom: 24.h,
            child: Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/rajveer.png"),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: 400.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 0;
                              selectedIndex + 1;
                            });
                          },
                          child: Text(
                            "Matrimony",
                            style: GoogleFonts.gothicA1(
                              fontSize: 20.sp,
                              fontWeight:
                                  selectedIndex == 0
                                      ? FontWeight.w500
                                      : FontWeight.w400,
                              color:
                                  selectedIndex == 0
                                      ? Color(0xFFFFFFFF)
                                      : Color(0xFF9A97AE),
                              letterSpacing: -1.2,
                            ),
                          ),
                        ),
                        Container(
                          width: 6.w,
                          height: 6.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFFF9E0D),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 1;
                              selectedIndex + 1;
                            });
                          },
                          child: Text(
                            "Job Portal",
                            style: GoogleFonts.gothicA1(
                              fontSize: 20.sp,
                              fontWeight:
                                  selectedIndex == 1
                                      ? FontWeight.w500
                                      : FontWeight.w400,
                              color:
                                  selectedIndex == 1
                                      ? Color(0xFFFFFFFF)
                                      : Color(0xFF9A97AE),
                              letterSpacing: -1.2,
                            ),
                          ),
                        ),

                        Container(
                          width: 6.w,
                          height: 6.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFFF9E0D),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 2;
                              selectedIndex + 1;
                            });
                          },
                          child: Text(
                            "Real Estate",
                            style: GoogleFonts.gothicA1(
                              fontSize: 20.sp,
                              fontWeight:
                                  selectedIndex == 2
                                      ? FontWeight.w500
                                      : FontWeight.w400,
                              color:
                                  selectedIndex == 2
                                      ? Color(0xFFFFFFFF)
                                      : Color(0xFF9A97AE),
                              letterSpacing: -1.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Container(
                    width: 392.w,
                    height: 1.h,
                    decoration: BoxDecoration(color: Colors.white24),
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    "Looking for a Life Partner?",
                    style: GoogleFonts.gothicA1(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF9A97AE),
                      letterSpacing: -1.3,
                    ),
                  ),
                  SizedBox(height: 24.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => StartPage()),
                      );
                    },
                    child: Container(
                      width: 392.w,
                      height: 53.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: Color(0xFFFF9E0D),
                      ),
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: GoogleFonts.gothicA1(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF030016),
                            letterSpacing: -1.2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
