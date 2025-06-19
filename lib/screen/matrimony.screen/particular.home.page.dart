import 'package:ai_powered_app/screen/matrimony.screen/favourite.page.dart';
import 'package:ai_powered_app/screen/matrimony.screen/message.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ParticulaHomePage extends StatefulWidget {
  const ParticulaHomePage({super.key});

  @override
  State<ParticulaHomePage> createState() => _ParticulaHomePageState();
}

class _ParticulaHomePageState extends State<ParticulaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDF6F8),
      appBar: AppBar(backgroundColor: Color(0xFFFDF6F8)),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.r),
                    child: Image.asset(
                      "assets/particularimage.png",
                      width: 392.w,
                      height: 396.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.r),
                    child: Image.asset(
                      "assets/femalebgimage.png",
                      width: 392.w,
                      height: 396.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25.h),
              Text(
                "Bio",
                style: GoogleFonts.gothicA1(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF030016),
                  letterSpacing: -0.7,
                ),
              ),
              SizedBox(height: 15.h),
              Text(
                "Hello! I’m Ananya Panday, a vibrant soul from Maharashtra, India. I have a deep love for art and culture, and I enjoy exploring the rich heritage of my surroundings. By profession, I’m a digital marketer, where I create engaging content that connects people. In my free time, you’ll find me practicing yoga, experimenting with new recipes, or enjoying a quiet evening with a captivating novel. I cherish meaningful conversations, weekend getaways, and the joy of discovering new places.",
                style: GoogleFonts.gothicA1(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF878599),
                  letterSpacing: -0.7,
                ),
              ),
              SizedBox(height: 25.h),
              Text(
                "My interest ",
                style: GoogleFonts.gothicA1(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF030016),
                  letterSpacing: -0.7,
                ),
              ),
              SizedBox(height: 15.h),
              FilterChip(
                backgroundColor: Color(0xFFF2D4DC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  side: BorderSide(color: Colors.transparent),
                ),
                label: Text(
                  "Music",
                  style: GoogleFonts.gothicA1(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF030016),
                  ),
                ),
                onSelected: (value) {},
              ),
              SizedBox(height: 15.h),
              Text(
                "Photo",
                style: GoogleFonts.gothicA1(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF030016),
                  letterSpacing: -0.7,
                ),
              ),
              SizedBox(height: 15.h),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.w,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        width: 186.w,
                        height: 190.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Image.asset("assets/photo.png"),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 100.h),
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.only(bottom: 10.h, top: 6.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => FavouritePage()),
                );
              },
              child: Container(
                width: 160.w,
                height: 74.h,
                decoration: BoxDecoration(
                  color: Color(0xFFFE9F0F),
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, -6),
                      blurRadius: 40,
                      spreadRadius: 0,
                      color: Color.fromARGB(63, 0, 0, 0),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(Icons.favorite_border, color: Colors.white),
                ),
              ),
            ),
            SizedBox(width: 20.w),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => MessagePage()),
                );
              },
              child: Container(
                width: 160.w,
                height: 74.h,
                decoration: BoxDecoration(
                  color: Color(0xFFF2D4DC),
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, -6),
                      blurRadius: 40,
                      spreadRadius: 0,
                      color: Color.fromARGB(63, 0, 0, 0),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(Icons.chat, color: Color(0xFFFE9F0F)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
