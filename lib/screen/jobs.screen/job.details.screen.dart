import 'package:ai_powered_app/screen/jobs.screen/basic.info.screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class JobDetailsScreen extends StatefulWidget {
  const JobDetailsScreen({super.key});

  @override
  State<JobDetailsScreen> createState() => _JobDetailsScreenState();
}

class _JobDetailsScreenState extends State<JobDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F8FA),
      appBar: AppBar(backgroundColor: Color(0xFFF5F8FA)),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Vacancy Details",
                style: GoogleFonts.alexandria(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF030016),
                  letterSpacing: -1,
                ),
              ),
              SizedBox(height: 20.h),
              Container(
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
                              child: Image.asset("assets/full.png"),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Full Stack Developer",
                                style: GoogleFonts.alexandria(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF1E1E1E),
                                  letterSpacing: -1,
                                ),
                              ),
                              Text(
                                "JPLoft Pvt. Ltd",
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
                            "Mansarovar, Jaipur",
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
                            "₹15000-₹25000",
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
                              borderRadius: BorderRadius.circular(40.r),
                            ),
                            child: Center(
                              child: Text(
                                "Remote",
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
                              borderRadius: BorderRadius.circular(40.r),
                            ),
                            child: Center(
                              child: Text(
                                "Full Time",
                                style: GoogleFonts.alexandria(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF1E1E1E),
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
              SizedBox(height: 30.h),
              Text(
                "Job Description",
                style: GoogleFonts.alexandria(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF030016),
                  letterSpacing: -1,
                ),
              ),
              SizedBox(height: 15.h),
              Text(
                "Join our dynamic team at JP Loft Company as a Full Stack Developer! We are looking for a talented individual who is passionate about building innovative web applications and has a strong understanding of both front-end and back-end technologies. You will collaborate with designers and product managers to create seamless user experiences while ensuring robust functionality. If you thrive in a fast-paced environment and enjoy tackling complex challenges, we want to hear from you! Bring your creativity and technical expertise to help us shape the future of our digital products.",
                style: GoogleFonts.alexandria(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF878599),
                  letterSpacing: -0.1,
                ),
              ),
              SizedBox(height: 30.h),
              Text(
                "Responsibilities",
                style: GoogleFonts.alexandria(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF030016),
                  letterSpacing: -1,
                ),
              ),
              SizedBox(height: 15.h),
              Text(
                "Develop and maintain web applications using both front-end and back-end technologies.-Collaborate with designers to create user-friendly interfaces.-Work closely with product managers to understand project requirements and deliver solutions.-Ensure the performance, quality, and responsiveness of applications.- Troubleshoot and debug applications to optimize performance.- Stay updated with emerging technologies and industry trends to enhance skills and knowledge.- Participate in code reviews and contribute to team knowledge sharing.",
                style: GoogleFonts.alexandria(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF878599),
                  letterSpacing: -0.1,
                ),
              ),
              SizedBox(height: 100.h),
            ],
          ),
        ),
      ),
      bottomSheet: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => BasicInfoScreen()),
          );
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 20.h),
          width: 339.w,
          height: 74.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: Color(0xFF0A66C2),
          ),
          child: Center(
            child: Text(
              "Apply Now",
              style: GoogleFonts.alexandria(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
