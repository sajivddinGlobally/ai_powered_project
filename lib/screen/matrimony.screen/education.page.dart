import 'package:ai_powered_app/screen/matrimony.screen/family.details.page.dart';
import 'package:ai_powered_app/screen/matrimony.screen/profile.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  String? qualification, profissional;

  final List<String> qualificationList = [
    "High School",
    "Intermediate",
    "Diploma",
    "Bachelor's Degree",
    "Master's Degree",
    "PhD",
  ];
  final List<String> professionList = [
    "Government Job",
    "Private Job",
    "Business",
    "Self-Employed",
    "Doctor",
    "Engineer",
    "Teacher",
    "Professor",
    "Chartered Accountant",
    "Banker",
    "Lawyer",
    "Software Developer",
    "Architect",
    "Marketing Executive",
    "Sales Manager",
    "HR Professional",
    "Police/Defence",
    "Journalist",
    "Scientist",
    "Actor/Model",
    "Freelancer",
    "Not Working",
  ];

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDF6F8),
      appBar: AppBar(
        backgroundColor: Color(0xFFFDF6F8),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => FamilyDetailsPage()),
              );
            },
            child: Container(
              width: 67.w,
              height: 30.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                color: Color(0xFFF2D4DC),
              ),
              child: Center(
                child: Text(
                  "Skip",
                  style: GoogleFonts.gothicA1(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFE9F0F),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 24.w),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Education & Career",
              style: GoogleFonts.gothicA1(
                fontSize: 30.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xFF030016),
                letterSpacing: -1,
              ),
            ),
            Text(
              "Tell Us About Your Career",
              style: GoogleFonts.gothicA1(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF9A97AE),
              ),
            ),
            SizedBox(height: 20.h),
            buildDropDown(
              hint: "Select Highest Qualification",
              items: qualificationList,
              onChange: (value) {
                qualification = value;
              },
            ),
            SizedBox(height: 15.h),
            buildDropDown(
              hint: "Select Profession",
              items: professionList,
              onChange: (value) {
                profissional = value;
              },
            ),
            SizedBox(height: 15.h),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20.w, right: 20.w),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide: BorderSide(
                    color: Color(0xFFDADADA),
                    width: 1.5.w,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide: BorderSide(
                    color: Color(0xFFDADADA),
                    width: 1.5.w,
                  ),
                ),
                hintText: "Enter Company / Organization Name",
                hintStyle: GoogleFonts.gothicA1(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF030016),
                  letterSpacing: -0.2,
                ),
              ),
            ),
            SizedBox(height: 15.h),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20.w, right: 20.w),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide: BorderSide(
                    color: Color(0xFFDADADA),
                    width: 1.5.w,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide: BorderSide(
                    color: Color(0xFFDADADA),
                    width: 1.5.w,
                  ),
                ),
                hintText: "Enter Annual Income",
                hintStyle: GoogleFonts.gothicA1(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF030016),
                  letterSpacing: -0.2,
                ),
              ),
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                SizedBox(
                  width: 25.w,
                  height: 25.w,
                  child: Checkbox(
                    activeColor: Color(0xFFFE9F0F),
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                ),
                SizedBox(width: 10.h),
                Text(
                  "Make income private",
                  style: GoogleFonts.gothicA1(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF030016),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => FamilyDetailsPage()),
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
