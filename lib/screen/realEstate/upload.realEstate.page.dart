import 'dart:io';

import 'package:ai_powered_app/screen/realEstate/realEstate.contactInfo.page.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadRealestatePage extends StatefulWidget {
  const UploadRealestatePage({super.key});

  @override
  State<UploadRealestatePage> createState() => _UploadRealestatePageState();
}

class _UploadRealestatePageState extends State<UploadRealestatePage> {
  List<File> selectFiles = [];

  Future<void> pickFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: FileType.image,
    );
    if (result != null) {
      setState(() {
        selectFiles = result.paths.map((path) => File(path!)).toList();
      });
    } else {
      print("Sorry");
    }
  }

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
              "Upload Photos",
              style: GoogleFonts.inter(
                fontSize: 30.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF030016),
                letterSpacing: -1.3,
              ),
            ),
            Text(
              "Tell us about your resume ",
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF9A97AE),
              ),
            ),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () {
                pickFiles();
              },
              child: Container(
                width: 392.w,
                height: 134.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  border: Border.all(color: Color(0xFFDADADA), width: 1.5.w),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.file_upload_outlined,
                      size: 30.sp,
                      color: Color(0xFFA95C68),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Upload your Photos ",
                      style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF9A97AE),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.h),
            selectFiles.isNotEmpty
                ? Wrap(
                  spacing: 10.w,
                  runSpacing: 10.h,
                  children:
                      selectFiles.map((file) {
                        return Stack(
                          children: [
                            Container(
                              width: 120.w,
                              height: 120.h,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.r),
                                child: Image.file(file, fit: BoxFit.cover),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectFiles.remove(file);
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.close,
                                    size: 25.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                )
                : Container(),
            SizedBox(height: 30.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => RealestateContactinfoPage(),
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
    );
  }
}
