import 'package:ai_powered_app/screen/matrimony.screen/otp.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(backgroundColor: Color(0xFFFFFFFF)),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Enter your mobile number to get OTP",
              style: GoogleFonts.gothicA1(
                fontSize: 30.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xFF030016),
                letterSpacing: -1,
              ),
            ),
            SizedBox(height: 30.h),
            TextField(
              maxLength: 10,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                counterText: '',
                contentPadding: EdgeInsets.only(left: 20.w, right: 20.w),
                labelText: "Mobile Number",
                labelStyle: GoogleFonts.gothicA1(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFF9E0D),
                  letterSpacing: -0.5,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide: BorderSide(
                    color: Color(0xFFFF9E0D),
                    width: 1.5.w,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide: BorderSide(
                    color: Color(0xFFFF9E0D),
                    width: 1.5.w,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => OtpPage()),
                );
              },
              child: Container(
                width: 392.w,
                height: 53.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Color(0xFFE6E1D8),
                ),
                child: Center(
                  child: Text(
                    'Get OTP',
                    style: GoogleFonts.gothicA1(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF9A97AE),
                      letterSpacing: -1,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Center(
              child: Text.rich(
                TextSpan(
                  text: "By clicking, I accept the",
                  style: GoogleFonts.gothicA1(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF9A97AE),
                    letterSpacing: -1,
                  ),
                  children: [
                    TextSpan(
                      text: " terms of service ",
                      style: GoogleFonts.gothicA1(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF9A97AE),
                        letterSpacing: -1,
                      ),
                    ),
                    TextSpan(
                      text: "and ",
                      style: GoogleFonts.gothicA1(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF9A97AE),
                        letterSpacing: -1,
                      ),
                    ),
                    TextSpan(
                      text: "privacy policy",
                      style: GoogleFonts.gothicA1(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF9A97AE),
                        letterSpacing: -1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 46.h),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.black12,
                    thickness: 1.w,
                    endIndent: 10,
                    indent: 10,
                  ),
                ),
                Text(
                  "or login with",
                  style: GoogleFonts.gothicA1(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFF9E0D),
                    letterSpacing: -1,
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.black12,
                    thickness: 1.w,
                    endIndent: 10,
                    indent: 10,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WithBody(image: "assets/mail.png"),
                SizedBox(width: 10.w),
                WithBody(image: "assets/g.png"),
                SizedBox(width: 10.w),
                WithBody(image: "assets/facebook.png"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WithBody extends StatelessWidget {
  final String image;
  const WithBody({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44.w,
      height: 44.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Color(0xFFE6E1D8)),
      ),
      child: Image.asset(image),
    );
  }
}
