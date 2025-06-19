import 'package:ai_powered_app/screen/jobs.screen/skills.screen.dart';
import 'package:ai_powered_app/screen/jobs.screen/basic.info.screen.dart';
import 'package:ai_powered_app/screen/matrimony.screen/profile.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  String? qualification;
  final List<String> qualificationList = [
    "High School",
    "Intermediate",
    "Diploma",
    "Bachelor's Degree",
    "Master's Degree",
    "PhD",
  ];

  final univarsityController = TextEditingController();
  final totalexpriControler = TextEditingController();
  final jobtitleController = TextEditingController();
  final currentcompNameControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F8FA),
      appBar: AppBar(backgroundColor: Color(0xFFF5F8FA)),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Education & Work",
                style: GoogleFonts.alexandria(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff030016),
                  letterSpacing: -1,
                ),
              ),
              Text(
                "Tell us about your education & experience",
                style: GoogleFonts.alexandria(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff9A97AE),
                  letterSpacing: -1,
                ),
              ),
              SizedBox(height: 25.h),
              buildDropDown(
                hint: "Select Highest Qualification",
                items: qualificationList,
                onChange: (value) {
                  setState(() {
                    qualification = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              TextFieldBody(
                hint: "Enter University/Institute Name",
                controller: univarsityController,
              ),

              SizedBox(height: 15.h),
              TextFieldBody(
                hint: "Enter Total Experience (in years)",
                controller: totalexpriControler,
              ),
              SizedBox(height: 15.h),
              TextFieldBody(
                hint: "Enter Current Job Title",
                controller: jobtitleController,
              ),
              SizedBox(height: 15.h),
              TextFieldBody(
                hint: "Enter Current Company Name",
                controller: currentcompNameControler,
              ),
              SizedBox(height: 25.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => SkillsScreen()),
                  );
                },
                child: Container(
                  width: 392.w,
                  height: 53.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Color(0xFF0A66C2),
                  ),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: GoogleFonts.alexandria(
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
