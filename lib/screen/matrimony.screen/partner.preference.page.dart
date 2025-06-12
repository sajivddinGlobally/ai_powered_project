import 'package:ai_powered_app/screen/matrimony.screen/profile.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PartnerPreferencePage extends StatefulWidget {
  const PartnerPreferencePage({super.key});

  @override
  State<PartnerPreferencePage> createState() => _PartnerPreferencePageState();
}

class _PartnerPreferencePageState extends State<PartnerPreferencePage> {
  String? ageRange, heightRange, educationPreference, locationPreference;
  final List<String> ageRangeList = [
    "18 - 22",
    "23 - 27",
    "28 - 32",
    "33 - 37",
    "38 - 42",
    "43 - 47",
    "48 - 52",
    "53+",
  ];
  final List<String> heightRangeList = [
    "4'5\" - 4'8\"",
    "4'9\" - 5'0\"",
    "5'1\" - 5'4\"",
    "5'5\" - 5'8\"",
    "5'9\" - 6'0\"",
    "6'1\" - 6'4\"",
    "6'5\" +",
  ];
  final List<String> educationPreferenceList = [
    "High School",
    "Diploma",
    "Bachelor's Degree",
    "Master's Degree",
    "Doctorate / PhD",
    "Engineering",
    "Medical",
    "Management",
    "Commerce",
    "Arts",
    "Science",
    "Any",
  ];
  final List<String> locationPreferenceList = [
    "Same City",
    "Same State",
    "Anywhere in India",
    "Outside India",
    "Gulf Countries",
    "USA / Canada",
    "Europe",
    "No Preference",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDF6F8),
      appBar: AppBar(backgroundColor: Color(0xFFFDF6F8)),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Partner Preferences",
                style: GoogleFonts.gothicA1(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF030016),
                  letterSpacing: -1,
                ),
              ),
              Text(
                "What Are You Looking For in a Partner?",
                style: GoogleFonts.gothicA1(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF9A97AE),
                ),
              ),
              SizedBox(height: 20.h),
              buildDropDown(
                hint: "Select Age Range",
                items: ageRangeList,
                onChange: (value) {
                  setState(() {
                    ageRange = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              buildDropDown(
                hint: "Select Height Range",
                items: heightRangeList,
                onChange: (value) {
                  setState(() {
                    heightRange = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              buildDropDown(
                hint: "Select Education Preference",
                items: educationPreferenceList,
                onChange: (value) {
                  setState(() {
                    educationPreference = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              buildDropDown(
                hint: "Select Location Preference",
                items: locationPreferenceList,
                onChange: (value) {
                  setState(() {
                    locationPreference = value;
                  });
                },
              ),
              SizedBox(height: 20.h),
              TextField(
                maxLines: 6,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                    left: 20.w,
                    right: 20.w,
                    top: 20.h,
                  ),
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
                  hintText: "Enter Additional notes",
                  hintStyle: GoogleFonts.gothicA1(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF030016),
                    letterSpacing: -0.2,
                  ),
                ),
              ),
              SizedBox(height: 25.h),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   CupertinoPageRoute(builder: (context) => UploadPhotoPage()),
                  // );
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
      ),
    );
  }
}
