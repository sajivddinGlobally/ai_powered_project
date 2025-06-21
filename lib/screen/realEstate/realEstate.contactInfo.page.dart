import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RealestateContactinfoPage extends StatefulWidget {
  const RealestateContactinfoPage({super.key});

  @override
  State<RealestateContactinfoPage> createState() =>
      _RealestateContactinfoPageState();
}

class _RealestateContactinfoPageState extends State<RealestateContactinfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(backgroundColor: Color(0xFFF5F5F5)),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Text(
              "Contact Info",
              style: GoogleFonts.inter(
                fontSize: 30.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF030016),
                letterSpacing: -1.3,
              ),
            ),
            Text(
              "Tell us about your contact details  ",
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF9A97AE),
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
                hintText: "Enter Owner/Agent Name",
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
                hintText: "Enter Mobile Number",
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
                hintText: "Enter Email ID ",
                hintStyle: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF030016),
                  letterSpacing: -0.2,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   CupertinoPageRoute(
                //     builder: (context) => LocationRealestatePage(),
                //   ),
                // );
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
                    "Submit",
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
    );
  }
}
