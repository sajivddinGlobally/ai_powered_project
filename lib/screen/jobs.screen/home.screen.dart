import 'dart:convert';
import 'package:ai_powered_app/data/fetchJobProvider.dart';
import 'package:ai_powered_app/screen/jobs.screen/job.details.screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int tab = 0;
  int bottomTab = 0;

  List<Map<String, dynamic>> joblist = [
    {
      "imageUrl": "assets/full.png",
      "position": "Full Stack Developer",
      "remote": "Remote",
      "part": "Full Time",
      "salary": "₹15000-₹25000",
      "location": "Mansarovar,jaipur",
    },
    {
      "imageUrl": "assets/ui.png",
      "position": "UI/UX Designer",
      "remote": "Hybrid",
      "part": "Part Time",
      "salary": "₹8000-₹12000",
      "location": "Banjara Hills, Hyderabad",
    },
    {
      "imageUrl": "assets/full.png",
      "position": "Data Analyst",
      "remote": "Remote",
      "part": "One-site",
      "salary": "₹15000-₹25000",
      "location": "Mansarovar,jaipur",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final joblistingProvider = ref.watch(fetchJobProvider);
    if (joblistingProvider.isLoading) {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(color: Color(0xFF0A66C2)),
        ),
      );
    }
    if (joblistingProvider.error != null) {
      return Scaffold(body: Center(child: Text("${joblistingProvider.error}")));
    }
    return Scaffold(
      backgroundColor: Color(0xFFF5F8FA),
      body: joblistingProvider.when(
        data: (snap) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60.h),
                Row(
                  children: [
                    SizedBox(width: 24.w),
                    Container(
                      width: 40.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xFF0A66C2),
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/rajveer.png",
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Job Portal",
                          style: GoogleFonts.alexandria(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF030016),
                            letterSpacing: -1,
                          ),
                        ),
                        Text(
                          "Welcome Rahul !",
                          style: GoogleFonts.alexandria(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF9A97AE),
                            letterSpacing: -1,
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
                        border: Border.all(color: Colors.black12, width: 1.w),
                      ),
                      child: Center(child: Icon(Icons.notifications_none)),
                    ),
                    SizedBox(width: 24.w),
                  ],
                ),
                SizedBox(height: 16.h),
                Padding(
                  padding: EdgeInsetsGeometry.only(left: 24.w, right: 24.w),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 20.w,
                        top: 20.h,
                        bottom: 20.h,
                        right: 20.w,
                      ),
                      filled: true,
                      fillColor: Color(0xFFE6EDF2),
                      hintText: "Search your job",
                      hintStyle: GoogleFonts.alexandria(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF030016),
                        letterSpacing: -1,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                Padding(
                  padding: EdgeInsets.only(left: 24.w),
                  child: Text(
                    "Browse by categories",
                    style: GoogleFonts.alexandria(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF030016),
                      letterSpacing: -1,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.w, right: 24.h, top: 5.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryBody(name: "Designer"),
                          CategoryBody(name: "Developer"),
                          CategoryBody(name: "Product Manager"),
                          CategoryBody(name: "UX Researcher"),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryBody(name: "Content Strategist"),
                          CategoryBody(name: "Marketing Specialist"),
                          CategoryBody(name: "Data\nAnalyst"),
                          CategoryBody(name: "See More"),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                Padding(
                  padding: EdgeInsets.only(left: 24.w, right: 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Recommend Jobs",
                        style: GoogleFonts.alexandria(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF030016),
                          letterSpacing: -1,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                tab = 0;
                              });
                            },
                            child: RecomandedBody(
                              name: "All",
                              bgColor:
                                  tab == 0 ? Colors.white : Colors.transparent,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                tab = 1;
                              });
                            },
                            child: RecomandedBody(
                              name: "Remote",
                              bgColor:
                                  tab == 1 ? Colors.white : Colors.transparent,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                tab = 2;
                              });
                            },
                            child: RecomandedBody(
                              name: "Onsite",
                              bgColor:
                                  tab == 2 ? Colors.white : Colors.transparent,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                tab = 3;
                              });
                            },
                            child: RecomandedBody(
                              name: "Full Time",
                              bgColor:
                                  tab == 3 ? Colors.white : Colors.transparent,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                tab = 4;
                              });
                            },
                            child: RecomandedBody(
                              name: "Part Time",
                              bgColor:
                                  tab == 4 ? Colors.white : Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
                ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: snap.jobs.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => JobDetailsScreen(),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 24.w,
                              right: 24.w,
                              bottom: 20.h,
                            ),
                            // width: 392.w,
                            // height: 192.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 40,
                                  spreadRadius: 0,
                                  color: Color.fromARGB(12, 10, 102, 194),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 20.w,
                                right: 20.w,
                                top: 20.h,
                                bottom: 20.h,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 44.w,
                                        height: 44.h,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.grey,
                                        ),
                                        child: ClipOval(
                                          child: Image.asset(
                                            //"assets/full.png",
                                            joblist[index]["imageUrl"]
                                                .toString(),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            //"Full Stack Developer",
                                            // joblist[index]["position"]
                                            //     .toString(),
                                            snap.jobs[index].title,
                                            style: GoogleFonts.alexandria(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF1E1E1E),
                                              letterSpacing: -1,
                                            ),
                                          ),
                                          Text(
                                            // "JPLoft Pvt. Ltd",
                                            snap.jobs[index].company,
                                            style: GoogleFonts.alexandria(
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF9A97AE),
                                              letterSpacing: -0.2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 15.h),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        size: 20.sp,
                                        color: Color(0xFF9A97AE),
                                      ),
                                      SizedBox(width: 6.w),
                                      Text(
                                        //"Mansarovar, Jaipur",
                                        //joblist[index]["location"].toString(),
                                        snap.jobs[index].location,
                                        style: GoogleFonts.alexandria(
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF9A97AE),
                                          letterSpacing: -0.2,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10.h),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.attach_money,
                                        size: 20.sp,
                                        color: Color(0xFF9A97AE),
                                      ),
                                      SizedBox(width: 6.w),
                                      Text(
                                        //"₹15000-₹25000",
                                        joblist[index]['salary'].toString(),
                                        style: GoogleFonts.alexandria(
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF9A97AE),
                                          letterSpacing: -0.2,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 25.h),
                                  Row(
                                    children: [
                                      Container(
                                        width: 69.w,
                                        height: 28.h,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFE6EDF2),
                                          borderRadius: BorderRadius.circular(
                                            40.r,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            //"Remote",
                                            joblist[index]['remote'].toString(),
                                            style: GoogleFonts.alexandria(
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF1E1E1E),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10.h),
                                      Container(
                                        width: 73.w,
                                        height: 28.h,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFE6EDF2),
                                          borderRadius: BorderRadius.circular(
                                            40.r,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            //"Full Time",
                                            joblist[index]['part'].toString(),
                                            style: GoogleFonts.alexandria(
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF1E1E1E),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        width: 80.w,
                                        height: 32.h,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF0A66C2),
                                          borderRadius: BorderRadius.circular(
                                            40.r,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Apply",
                                            style: GoogleFonts.alexandria(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFFFFFFFF),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          );
        },
        error: (error, stackTrace) => Center(child: Text(error.toString())),
        loading:
            () => Center(
              child: CircularProgressIndicator(color: Color(0xFF0A66C2)),
            ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF0A66C2),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: BottomNavigationBar(
              backgroundColor:
                  Colors.transparent, // Make nav bar background transparent
              elevation: 0, // Optional: remove shadow
              currentIndex: bottomTab,
              onTap: (value) {
                setState(() {
                  bottomTab = value;
                });
              },
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white60,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              selectedLabelStyle: GoogleFonts.alexandria(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.2,
              ),
              unselectedLabelStyle: GoogleFonts.gothicA1(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.2,
              ),
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                  icon: Icon(Icons.explore_outlined),
                  label: 'Browse',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.work_outline),
                  label: 'My Job',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outlined),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RecomandedBody extends StatelessWidget {
  final String name;
  final Color bgColor;
  const RecomandedBody({super.key, required this.name, required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 44.w,
      // height: 28.h,
      padding: EdgeInsets.only(
        left: 15.w,
        right: 15.w,
        top: 10.h,
        bottom: 10.h,
      ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(40.r),
      ),
      child: Center(
        child: Text(
          name,
          style: GoogleFonts.alexandria(
            fontSize: 11.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xFF1E1E1E),
          ),
        ),
      ),
    );
  }
}

class CategoryBody extends StatelessWidget {
  final String name;
  const CategoryBody({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 91.w,
      height: 100.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: Color(0xFFFFFFFF),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 14.w, top: 14.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/category.png",
              width: 24.w,
              height: 24.h,
              fit: BoxFit.cover,
            ),
            Spacer(),
            Text(
              name,
              textAlign: TextAlign.left,
              style: GoogleFonts.alexandria(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFF1E1E1E),
                letterSpacing: -1,
                height: 1.2,
              ),
            ),
            SizedBox(height: 14.h),
          ],
        ),
      ),
    );
  }
}
