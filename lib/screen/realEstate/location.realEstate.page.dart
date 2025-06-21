import 'package:ai_powered_app/screen/matrimony.screen/profile.page.dart';
import 'package:ai_powered_app/screen/realEstate/upload.realEstate.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationRealestatePage extends StatefulWidget {
  const LocationRealestatePage({super.key});

  @override
  State<LocationRealestatePage> createState() => _LocationRealestatePageState();
}

class _LocationRealestatePageState extends State<LocationRealestatePage> {
  String? city;
  final List<String> cityList = ["jaipur", "Delhi"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(backgroundColor: Color(0xFFF5F5F5)),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Text(
                "Location Details",
                style: GoogleFonts.inter(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF030016),
                  letterSpacing: -1.3,
                ),
              ),
              Text(
                "Tell us about your Location",
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF9A97AE),
                ),
              ),
              SizedBox(height: 15.h),
              buildDropDown(
                hint: "Select Furnishing",
                items: cityList,
                onChange: (value) {
                  setState(() {
                    city = value;
                  });
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
                  hintText: "Enter Locality / Area",
                  hintStyle: GoogleFonts.inter(
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
                  hintText: "Enter Complete Address",
                  hintStyle: GoogleFonts.inter(
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
                  hintText: "Nearby Landmark (optional)",
                  hintStyle: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF030016),
                    letterSpacing: -0.2,
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => UploadRealestatePage(),
                    ),
                  );
                },
                child: Container(
                  width: 392.w,
                  height: 53.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Color(0xFF00796B),
                  ),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: GoogleFonts.inter(
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
