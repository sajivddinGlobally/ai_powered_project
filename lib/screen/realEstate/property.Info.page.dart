import 'package:ai_powered_app/screen/matrimony.screen/profile.page.dart';
import 'package:ai_powered_app/screen/realEstate/property.realEstate.details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PropertyInfoPage extends StatefulWidget {
  const PropertyInfoPage({super.key});

  @override
  State<PropertyInfoPage> createState() => _PropertyInfoPageState();
}

class _PropertyInfoPageState extends State<PropertyInfoPage> {
  String? listing, propertyType, BHK;
  final List<String> listingList = [
    "For Rent",
    "For Sale",
    "Lease",
    "PG / Shared",
    "Commercial Property",
    "Land / Plot",
  ];

  final List<String> propertyTypeList = [
    // Residential
    "Apartment / Flat",
    "Independent House / Villa",
    "Studio Apartment",
    "Builder Floor",
    "Penthouse",

    // Commercial
    "Office Space",
    "Shop / Showroom",
    "Commercial Building",
    "Co-working Space",
    "Warehouse / Godown",
    "Industrial Shed",

    // Land
    "Residential Land",
    "Commercial Land",
    "Agricultural Land",
    "Industrial Land",

    // Others
    "Farm House",
    "PG / Hostel",
    "Hotel / Guest House",
  ];
  final List<String> BHKList = [
    "1 RK", // 1 Room Kitchen (no separate bedroom)
    "1 BHK", // 1 Bedroom, Hall, Kitchen
    "2 BHK",
    "3 BHK",
    "4 BHK",
    "5 BHK",
    "6 BHK+",
  ];
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
                "Property Type & Listing Info",
                style: GoogleFonts.inter(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF030016),
                  letterSpacing: -1.3,
                ),
              ),
              Text(
                "Let's Start with the Basics",
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF9A97AE),
                ),
              ),
              SizedBox(height: 20.h),
              buildDropDown(
                hint: "Select Listing Type",
                items: listingList,
                onChange: (value) {
                  setState(() {
                    listing = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              buildDropDown(
                hint: "Select Property type",
                items: propertyTypeList,
                onChange: (value) {
                  setState(() {
                    propertyType = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              buildDropDown(
                hint: "Select BHK",
                items: BHKList,
                onChange: (value) {
                  setState(() {
                    BHK = value;
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
                  hintText: "Enter Price",
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
                  hintText: "Available From",
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
                      builder: (context) => PropertyRealestateDetails(),
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
