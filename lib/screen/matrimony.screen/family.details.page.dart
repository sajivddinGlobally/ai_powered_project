import 'package:ai_powered_app/screen/matrimony.screen/partner.preference.page.dart';
import 'package:ai_powered_app/screen/matrimony.screen/profile.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FamilyDetailsPage extends StatefulWidget {
  const FamilyDetailsPage({super.key});

  @override
  State<FamilyDetailsPage> createState() => _FamilyDetailsPageState();
}

class _FamilyDetailsPageState extends State<FamilyDetailsPage> {
  String? fatherOccupation, motherOccupation, familyType;
  final List<String> fatherOccupationList = [
    "Government Job",
    "Private Job",
    "Business",
    "Self-Employed",
    "Farmer",
    "Doctor",
    "Engineer",
    "Teacher",
    "Retired",
    "Defence Personnel",
    "Lawyer",
    "Not Alive",
    "Other",
  ];
  final List<String> motherOccupationList = [
    "Homemaker",
    "Government Job",
    "Private Job",
    "Business",
    "Self-Employed",
    "Teacher",
    "Doctor",
    "Retired",
    "Not Alive",
    "Other",
  ];
  final List<String> familyTypeList = [
    "Joint Family",
    "Nuclear Family",
    "Extended Family",
    "Others",
  ];
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
                CupertinoPageRoute(
                  builder: (context) => PartnerPreferencePage(),
                ),
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
              "Family Details",
              style: GoogleFonts.gothicA1(
                fontSize: 30.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xFF030016),
                letterSpacing: -1,
              ),
            ),
            Text(
              "A Little About Your Family",
              style: GoogleFonts.gothicA1(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF9A97AE),
              ),
            ),
            SizedBox(height: 20.h),
            buildDropDown(
              hint: "Select Father’s Occupation",
              items: fatherOccupationList,
              onChange: (value) {
                fatherOccupation = value;
              },
            ),
            SizedBox(height: 15.h),
            buildDropDown(
              hint: "Select Mother’s Occupation",
              items: motherOccupationList,
              onChange: (value) {
                motherOccupation = value;
              },
            ),
            SizedBox(height: 15.h),
            buildDropDown(
              hint: "Select Family Type",
              items: familyTypeList,
              onChange: (value) {
                familyType = value;
              },
            ),
            SizedBox(height: 25.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => PartnerPreferencePage(),
                  ),
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
