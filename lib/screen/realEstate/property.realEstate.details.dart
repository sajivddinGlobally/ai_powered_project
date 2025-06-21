import 'package:ai_powered_app/screen/matrimony.screen/profile.page.dart';
import 'package:ai_powered_app/screen/realEstate/location.realEstate.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PropertyRealestateDetails extends StatefulWidget {
  const PropertyRealestateDetails({super.key});

  @override
  State<PropertyRealestateDetails> createState() =>
      _PropertyRealestateDetailsState();
}

class _PropertyRealestateDetailsState extends State<PropertyRealestateDetails> {
  String? furnutire, parking;
  final List<String> furnitureList = [
    "Fully Furnished",
    "Semi Furnished",
    "Unfurnished",
  ];
  final List<String> parkingList = ["Yes", "NO"];
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
                "Property Details",
                style: GoogleFonts.inter(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF030016),
                  letterSpacing: -1.3,
                ),
              ),
              Text(
                "Tell us about your Property ",
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF9A97AE),
                ),
              ),
              SizedBox(height: 15.h),
              buildDropDown(
                hint: "Select Furnishing",
                items: furnitureList,
                onChange: (value) {
                  setState(() {
                    furnutire = value;
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
                  hintText: "Enter Area",
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
                  hintText: "Enter No. of Bathrooms",
                  hintStyle: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF030016),
                    letterSpacing: -0.2,
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              buildDropDown(
                hint: "is Parking Available?",
                items: parkingList,
                onChange: (value) {
                  setState(() {
                    parking = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => LocationRealestatePage(),
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
