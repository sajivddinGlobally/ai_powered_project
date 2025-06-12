import 'package:ai_powered_app/screen/matrimony.screen/interest.page.dart';
import 'package:ai_powered_app/screen/matrimony.screen/profile.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationLifestylePage extends StatefulWidget {
  const LocationLifestylePage({super.key});

  @override
  State<LocationLifestylePage> createState() => _LocationLifestylePageState();
}

class _LocationLifestylePageState extends State<LocationLifestylePage> {
  String? country, state, city, livingStatus, diet, smoke, drink;
  final List<String> countrylist = ["India", "USA", "Canada"];
  final List<String> statelist = ["Delhin", "Rajsthan", "Bihar"];
  final List<String> citylist = ["New Delhi", "Jaipur", "Siwan"];
  final List<String> livingStatuslist = [
    "With Parents",
    "Alone",
    "With Roomates",
  ];
  final List<String> dietlist = ["Vegetarian", "Non-vegetraian", "Both"];
  final List<String> smokinglist = ["Yes", "No", "Occasionally"];
  final List<String> drinkinglist = ["Yes", "No", "Occasionally"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDF6F8),
      appBar: AppBar(backgroundColor: Color(0xFFFDF6F8)),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Location & Lifestyle",
              style: GoogleFonts.gothicA1(
                fontSize: 30.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xFF030016),
                letterSpacing: -1,
              ),
            ),
            Text(
              "Where Do You Live?",
              style: GoogleFonts.gothicA1(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF9A97AE),
                letterSpacing: -1,
              ),
            ),
            SizedBox(height: 25.h),
            buildDropDown(
              hint: "Select Country",
              items: citylist,
              onChange: (value) {
                city = value;
              },
            ),
            SizedBox(height: 15.h),
            buildDropDown(
              hint: "Select State",
              items: statelist,
              onChange: (value) {
                state = value;
              },
            ),
            SizedBox(height: 15.h),
            buildDropDown(
              hint: "Select City",
              items: citylist,
              onChange: (value) {
                city = value;
              },
            ),
            SizedBox(height: 15.h),
            buildDropDown(
              hint: "Select Living Status",
              items: livingStatuslist,
              onChange: (value) {
                livingStatus = value;
              },
            ),
            SizedBox(height: 15.h),
            buildDropDown(
              hint: "Select Diet",
              items: dietlist,
              onChange: (value) {
                diet = value;
              },
            ),
            SizedBox(height: 15.h),
            buildDropDown(
              hint: "Do you Smoke?",
              items: dietlist,
              onChange: (value) {
                diet = value;
              },
            ),
            SizedBox(height: 15.h),
            buildDropDown(
              hint: "Do you Drink?",
              items: drinkinglist,
              onChange: (value) {
                drink = value;
              },
            ),
            SizedBox(height: 25.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => InterestPage()),
                );
              },
              child: Container(
                width: 392.w,
                height: 53.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Color(0xFFFE9F0F),
                ),
                child: Center(
                  child: Text(
                    "Continue",
                    style: GoogleFonts.gothicA1(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
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
