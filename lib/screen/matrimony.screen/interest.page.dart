import 'package:ai_powered_app/screen/matrimony.screen/education.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class InterestPage extends StatefulWidget {
  const InterestPage({super.key});

  @override
  State<InterestPage> createState() => _InterestPageState();
}

class _InterestPageState extends State<InterestPage> {
  Set<String> selectedOptions = {};
  List<String> interestedlist = [
    "Music",
    "Art",
    "Technology",
    "Science",
    "Literature",
    "Travel",
    "Food",
    "Fashion",
    "Health",
    "Fitness",
    "Photography",
    "Gaming"
        "Nature",
    "History",
    "Education",
    "Finance",
    "Sports"
        "Theater",
    "Crafts",
  ];

  Set<String> selectinterested = {}; // Store selected items
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
              "Select interest ",
              style: GoogleFonts.gothicA1(
                fontSize: 30.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xFF030016),
                letterSpacing: -1,
              ),
            ),
            Text(
              "Select all of your hobbies and interest to match with partner",
              style: GoogleFonts.gothicA1(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF9A97AE),
                letterSpacing: -1,
              ),
            ),
            SizedBox(height: 25.h),
            Wrap(
              runSpacing: 10.w,
              spacing: 10.h,
              children:
                  interestedlist.map((filter) {
                    final isSelected = selectinterested.contains(filter);
                    return FilterChip(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        side: BorderSide(color: Colors.transparent),
                      ),
                      label: Text(
                        filter,
                        style: GoogleFonts.gothicA1(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF030016),
                        ),
                      ),
                      showCheckmark: false,
                      selectedColor: Color(0xFFFE9F0F),
                      selected: selectinterested.contains(filter),
                      backgroundColor: Color(0xFFF2D4DC),
                      onSelected: (isSelected) {
                        setState(() {
                          if (isSelected) {
                            selectinterested.add(filter);
                          } else {
                            selectinterested.remove(filter);
                          }
                        });
                      },
                    );
                  }).toList(),
            ),
            SizedBox(height: 25.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => EducationPage()),
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
