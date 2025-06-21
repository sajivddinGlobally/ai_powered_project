import 'package:ai_powered_app/screen/realEstate/property.Info.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ParticularRealestatePage extends StatefulWidget {
  const ParticularRealestatePage({super.key});

  @override
  State<ParticularRealestatePage> createState() =>
      _ParticularRealestatePageState();
}

class _ParticularRealestatePageState extends State<ParticularRealestatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.only(
                bottomLeft: Radius.circular(20.r),
                bottomRight: Radius.circular(20.r),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/image.png",
                    width: MediaQuery.of(context).size.width,
                    height: 400.h,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 20.w,
                    top: 20.h,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 35.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.h),
            Row(
              children: [
                SizedBox(width: 24.w),
                Text(
                  "Maharashtra Hilltop Retreat",
                  style: GoogleFonts.inter(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1E1E1E),
                    letterSpacing: -1,
                  ),
                ),
                Spacer(),
                Container(
                  width: 50.w,
                  height: 24.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.r),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Color(0xFFF4B400), size: 15.sp),
                      SizedBox(width: 3.w),
                      Text(
                        "4.5",
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF1E1E1E),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 24.w),
              ],
            ),
            SizedBox(height: 5.h),
            Row(
              children: [
                SizedBox(width: 24.w),
                Icon(
                  Icons.location_on_outlined,
                  color: Color(0xFF9A97AE),
                  size: 18.sp,
                ),
                SizedBox(width: 3.w),
                Text(
                  "Thane, Maharashtra",
                  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF9A97AE),
                    letterSpacing: -0.5,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Text(
                "₹1500/m",
                style: GoogleFonts.inter(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF00796B),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w),
              child: Row(
                children: [
                  Container(
                    width: 124.w,
                    height: 39.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: Color(0xFFDADADA), width: 1.w),
                    ),
                    child: Center(
                      child: Text(
                        "2 Bedroom",
                        style: GoogleFonts.inter(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF1E1E1E),
                          letterSpacing: -0.3,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.w),
                    width: 124.w,
                    height: 39.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: Color(0xFFDADADA), width: 1.w),
                    ),
                    child: Center(
                      child: Text(
                        "2 Bathroom",
                        style: GoogleFonts.inter(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF1E1E1E),
                          letterSpacing: -0.3,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.w),
                    width: 124.w,
                    height: 39.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: Color(0xFFDADADA), width: 1.w),
                    ),
                    child: Center(
                      child: Text(
                        "1340 sqft",
                        style: GoogleFonts.inter(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF1E1E1E),
                          letterSpacing: -0.3,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Text(
                "Property Description",
                style: GoogleFonts.inter(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF1E1E1E),
                  letterSpacing: -1,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 15.h, right: 24.w),
              child: Text(
                "Maharashtra Hilltop Retreat is a stunning residence located in the heart of Maharashtra. This elegant house features a blend of modern architecture and traditional design, offering spacious living areas filled with natural light. With beautifully landscaped gardens and a serene atmosphere, it provides a perfect retreat from the bustling city life. The villa boasts luxurious amenities, including a private pool and a state-of-the-art kitchen, making it an ideal home for families seeking comfort and style.",
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF878599),
                  letterSpacing: -1,
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Text(
                "Location",
                style: GoogleFonts.inter(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF1E1E1E),
                  letterSpacing: -1,
                ),
              ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w),
              child: Image.asset("assets/map.png"),
            ),
            SizedBox(height: 100.h),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: EdgeInsetsGeometry.only(bottom: 10.h),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => PropertyInfoPage()),
            );
          },
          child: Container(
            width: 339.w,
            height: 74.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: Color(0xFF00796B),
            ),
            child: Center(
              child: Text(
                "Book Now",
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
