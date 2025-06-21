import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RealestateHomePage extends StatefulWidget {
  const RealestateHomePage({super.key});

  @override
  State<RealestateHomePage> createState() => _RealestateHomePageState();
}

class _RealestateHomePageState extends State<RealestateHomePage> {
  int serchTab = 0;

  final List<String> sliderImages = const [
    "assets/image.png",
    "assets/image (2).png",
    "assets/image (3).png",
  ];

  final List myList = [
    {
      "imageUrl": "assets/recently.png",
      "name": "Kelwa house twon",
      "km": "₹1500/m",
    },
    {
      "imageUrl": "assets/recently2.png",
      "name": "Lakeside retreat",
      "km": "₹2000/m",
    },
    {
      "imageUrl": "assets/recently3.png",
      "name": "Mountain view cabin",
      "km": "₹2500/m",
    },
    {
      "imageUrl": "assets/recently4.png",
      "name": "Urban skyline apartment",
      "km": "₹3000/m",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 323.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.r),
                  bottomRight: Radius.circular(30.r),
                ),
                color: Color(0xFF00796B),
              ),
              child: Column(
                children: [
                  SizedBox(height: 40.h),
                  Row(
                    children: [
                      SizedBox(width: 24.w),
                      Container(
                        width: 40.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/rajveer.png",
                            color: Color(0xFF00796B),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Real estate",
                            style: GoogleFonts.inter(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFFFFFF),
                              letterSpacing: -1,
                            ),
                          ),
                          Text(
                            "Welcome Rahul !",
                            style: GoogleFonts.inter(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white70,
                              letterSpacing: -0.3,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        width: 40.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            color: Color.fromARGB(25, 255, 255, 255),
                            width: 1.w,
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.notifications_none,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 24.w),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Padding(
                    padding: EdgeInsets.only(left: 24.w, right: 24.w),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: 24.w,
                          right: 24.w,
                          bottom: 15.h,
                          top: 15.h,
                        ),
                        hintText: "Search property",
                        hintStyle: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white38,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.r),
                          borderSide: BorderSide(
                            color: Color.fromARGB(25, 255, 255, 255),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.r),
                          borderSide: BorderSide(
                            color: Color.fromARGB(25, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.only(left: 24.w, right: 24.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PropertyBody(
                          image: "assets/pro.png",
                          name: "Buy Property",
                        ),
                        PropertyBody(
                          image: "assets/sale.png",
                          name: 'Rent Property',
                        ),
                        PropertyBody(
                          image: "assets/rent.png",
                          name: 'Sell Property',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Center(
              child: Container(
                width: 214.w,
                height: 45.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.r),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 8.w,
                    top: 8.h,
                    bottom: 8.h,
                    right: 8.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            serchTab = 0;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 15.w, right: 15.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.r),
                            color:
                                serchTab == 0
                                    ? Color(0xFFF4B400)
                                    : Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              "Recomanded",
                              style: GoogleFonts.inter(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF1E1E1E),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            serchTab = 1;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 15.w, right: 15.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.r),
                            color:
                                serchTab == 1
                                    ? Color(0xFFF4B400)
                                    : Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              "Nearby",
                              style: GoogleFonts.inter(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF1E1E1E),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.h),
            CarouselSlider(
              items:
                  sliderImages.map((imagePath) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          margin: EdgeInsets.only(left: 20.w),
                          width: 350.w,
                          height: 240.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(
                                  20.r,
                                ),
                                child: Image.asset(
                                  //"assets/image.png",
                                  imagePath,
                                  width: 330.w,
                                  height: 240.h,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                left: 13.w,
                                top: 13.h,
                                child: Container(
                                  width: 50.w,
                                  height: 24.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40.r),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFF4B400),
                                        size: 15.sp,
                                      ),
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
                              ),
                              Positioned(
                                bottom: 13.h,
                                left: 0,
                                right: 0,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 13.w,
                                    right: 13.w,
                                  ),
                                  child: Container(
                                    width: 304.w,
                                    height: 65.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13.r),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 20.w,
                                        right: 20.w,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Maharashtra Hilltop Retreat",
                                                style: GoogleFonts.inter(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF1E1E1E),
                                                ),
                                              ),
                                              Text(
                                                "₹1500",
                                                style: GoogleFonts.inter(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xFF1E1E1E),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "2 Bedroom  |  1480m2",
                                                style: GoogleFonts.inter(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF9A97AE),
                                                ),
                                              ),
                                              Text(
                                                "/month",
                                                style: GoogleFonts.inter(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xFF9A97AE),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }).toList(),
              options: CarouselOptions(
                height: 240.h,
                viewportFraction: 0.9.w,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.2,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Text(
                "Recently Added",
                style: GoogleFonts.inter(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF030016),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            GridView.builder(
              itemCount: myList.length,
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.h,
                crossAxisSpacing: 10.w,
                childAspectRatio: 0.85, // tweak to control height
              ),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.zero,
                      width: 200.w,
                      height: 180.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Image.asset(
                        //"assets/recently.png"
                        myList[index]["imageUrl"],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: Text(
                        // "Kelwa house twon",
                        myList[index]["name"],
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1E1E1E),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: Text(
                        //"₹1500/m",
                        myList[index]["km"],
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9A97AE),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PropertyBody extends StatelessWidget {
  final String image;
  final String name;
  const PropertyBody({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 117.w,
          height: 80.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11.r),
            color: Color.fromARGB(255, 51, 148, 137),
          ),
          child: Center(child: Image.asset(image)),
        ),
        SizedBox(height: 13.h),
        Text(
          name,
          style: GoogleFonts.inter(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            letterSpacing: -0.5,
          ),
        ),
      ],
    );
  }
}
