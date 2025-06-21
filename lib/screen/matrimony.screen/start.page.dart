import 'package:ai_powered_app/screen/jobs.screen/home.screen.dart';
import 'package:ai_powered_app/screen/matrimony.screen/home.page.dart';
import 'package:ai_powered_app/screen/realEstate/realEstate.home.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/start.png"),
                Image.asset("assets/startbgimage.png"),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 30.h,
                  child: Column(
                    children: [
                      Text(
                        "Your Journey to Forever ",
                        style: GoogleFonts.gothicA1(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFFFFFFF),
                          letterSpacing: -1,
                        ),
                      ),
                      Text(
                        "Starts Here",
                        style: GoogleFonts.gothicA1(
                          fontSize: 40.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFFFFFF),
                          letterSpacing: -1,
                          height: 1.h,
                        ),
                      ),
                      SizedBox(height: 11.h),
                      Container(
                        width: 209.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11.r),
                          color: Color(0xFFFF9E0D),
                        ),
                        child: Center(
                          child: Text(
                            "Create profile",
                            style: GoogleFonts.gothicA1(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF030016),
                              letterSpacing: -1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsetsGeometry.only(left: 24.w, right: 24.w),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: FindBody(
                      title: "MATRIMONY",
                      subtitle: "FIND YOUR LIFE PARTNER",
                    ),
                  ),
                  SizedBox(height: 15.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: FindBody(
                      title: "JOBS",
                      subtitle: "DISCOVER CAREER OPPORTUNITIES",
                    ),
                  ),
                  SizedBox(height: 15.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => RealestateHomePage(),
                        ),
                      );
                    },
                    child: FindBody(
                      title: "REAL ESTATE",
                      subtitle: "BUT, RENT OR SELL PROPERTY",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}

class FindBody extends StatelessWidget {
  final String title;
  final String subtitle;
  const FindBody({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 392.w,
      height: 166.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Color(0xFFEDECF5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.gothicA1(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: Color(0xFF030016),
              letterSpacing: -1,
            ),
          ),
          Text(
            subtitle,
            style: GoogleFonts.gothicA1(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xFF716F80),
              letterSpacing: -1,
            ),
          ),
        ],
      ),
    );
  }
}
