// import 'package:ai_powered_app/screen/matrimony.screen/upload.photo.page.dart';
// import 'package:ai_powered_app/screen/providerScreen/profileProvider.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({super.key});

//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   String? gender, religion, cast, marital;
//   final List<String> genderlist = ["Male", "Female", "Other"];
//   final List<String> religionList = ["Hindu", "Muslim", "Sikh"];
//   final List<String> castlist = ["General", "OBC", "SC", "ST"];
//   final List<String> martiallist = ["Yes", "No"];


// @override
// void initState() {
//   super.initState();
//   _loadProfile();
// }

// Future<void> _loadProfile() async {
//   final prefs = await SharedPreferences.getInstance();
//   final token = prefs.getString('token');
//   final userId = prefs.getInt('user_id'); // 👈 use getInt

//   if (token != null && userId != null) {
//     Provider.of<ProfileProvider>(context, listen: false).getProfile(
//       userId: userId,
//       token: token,
//     );
//   } else {
//     debugPrint("Token or user_id not found in SharedPreferences");
//   }
// }






//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFFDF6F8),
//       appBar: AppBar(backgroundColor: Color(0xFFFDF6F8)),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 15.h),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Basic Details",
//                 style: GoogleFonts.gothicA1(
//                   fontSize: 30.sp,
//                   fontWeight: FontWeight.w600,
//                   color: Color(0xFF030016),
//                   letterSpacing: -1,
//                 ),
//               ),
//               Text(
//                 "Let's Start with the Basics",
//                 style: GoogleFonts.gothicA1(
//                   fontSize: 16.sp,
//                   fontWeight: FontWeight.w400,
//                   color: Color(0xFF9A97AE),
//                 ),
//               ),
//               SizedBox(height: 26.h),
//               TextField(
//                 decoration: InputDecoration(
//                   contentPadding: EdgeInsets.only(left: 20.w, right: 20.w),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(15.r),
//                     borderSide: BorderSide(
//                       color: Color(0xFFDADADA),
//                       width: 1.5.w,
//                     ),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(15.r),
//                     borderSide: BorderSide(
//                       color: Color(0xFFDADADA),
//                       width: 1.5.w,
//                     ),
//                   ),
//                   hintText: "Enter your full name",
//                   hintStyle: GoogleFonts.gothicA1(
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.w400,
//                     color: Color(0xFF030016),
//                     letterSpacing: -0.2,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 15.h),
//               buildDropDown(
//                 hint: "Select Gender",
//                 items: genderlist,
//                 onChange: (value) {
//                   setState(() {
//                     gender = value;
//                   });
//                 },
//               ),
//               SizedBox(height: 15.h),
//               TextField(
//                 decoration: InputDecoration(
//                   contentPadding: EdgeInsets.only(left: 20.w, right: 20.w),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(15.r),
//                     borderSide: BorderSide(
//                       color: Color(0xFFDADADA),
//                       width: 1.5.w,
//                     ),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(15.r),
//                     borderSide: BorderSide(
//                       color: Color(0xFFDADADA),
//                       width: 1.5.w,
//                     ),
//                   ),
//                   hintText: "Enter your Date of Birth",
//                   hintStyle: GoogleFonts.gothicA1(
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.w400,
//                     color: Color(0xFF030016),
//                     letterSpacing: -0.2,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 15.h),
//               buildDropDown(
//                 hint: "Select Religion",
//                 items: religionList,
//                 onChange: (value) {
//                   setState(() {
//                     religion = value;
//                   });
//                 },
//               ),
//               SizedBox(height: 15.h),
//               buildDropDown(
//                 hint: "Select Cast",
//                 items: castlist,
//                 onChange: (value) {
//                   setState(() {
//                     cast = value;
//                   });
//                 },
//               ),
//               SizedBox(height: 15.h),
//               buildDropDown(
//                 hint: "Select Marital Status",
//                 items: martiallist,
//                 onChange: (value) {
//                   setState(() {
//                     marital = value;
//                   });
//                 },
//               ),
//               SizedBox(height: 25.h),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     CupertinoPageRoute(builder: (context) => UploadPhotoPage()),
//                   );
//                 },
//                 child: Container(
//                   width: 392.w,
//                   height: 53.h,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15.r),
//                     color: Color(0xFFFE9F0F),
//                   ),
//                   child: Center(
//                     child: Text(
//                       "Continue",
//                       style: GoogleFonts.gothicA1(
//                         fontSize: 18.sp,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10.h),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class buildDropDown extends StatelessWidget {
//   final String hint;
//   final List<String> items;
//   final String? value;
//   final Function(String?) onChange;
//   const buildDropDown({
//     super.key,
//     required this.hint,
//     required this.items,
//     this.value,
//     required this.onChange,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonFormField<String>(
//       icon: Icon(Icons.keyboard_arrow_down),
//       value: value,
//       decoration: InputDecoration(
//         contentPadding: EdgeInsets.only(left: 20.w, right: 20.w),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(15.r),
//           borderSide: BorderSide(color: Color(0xFFDADADA), width: 1.5.w),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(15.r),
//           borderSide: BorderSide(color: Color(0xFFDADADA), width: 1.5.w),
//         ),
//         hintText: hint,
//         hintStyle: GoogleFonts.alexandria(
//           fontSize: 16.sp,
//           fontWeight: FontWeight.w400,
//           color: Color(0xFF030016),
//           letterSpacing: -0.2,
//         ),
//       ),
//       items:
//           items.map((item) {
//             return DropdownMenuItem(
//               value: item,
//               child: Text(
//                 item,
//                 style: GoogleFonts.gothicA1(
//                   fontSize: 16.sp,
//                   fontWeight: FontWeight.w400,
//                   color: Color(0xFF030016),
//                   letterSpacing: -0.2,
//                 ),
//               ),
//             );
//           }).toList(),
//       onChanged: onChange,
//     );
//   }
// }



import 'package:ai_powered_app/screen/matrimony.screen/upload.photo.page.dart';
import 'package:ai_powered_app/screen/providerScreen/profileProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String? gender, religion, cast, marital;

  final List<String> genderlist = ["Male", "Female", "Other"];
  final List<String> religionList = ["Hindu", "Muslim", "Sikh"];
  final List<String> castlist = ["General", "OBC", "SC", "ST"];
  final List<String> martiallist = ["Yes", "No"];

  TextEditingController nameController = TextEditingController();
  TextEditingController dobController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadProfile();
  }

  Future<void> _loadProfile() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    final userId = prefs.getInt('user_id');

    if (token != null && userId != null) {
      await Provider.of<ProfileProvider>(context, listen: false).getProfile(
        userId: userId,
        token: token,
      );

      final profileData = Provider.of<ProfileProvider>(context, listen: false).profileData;

      if (profileData != null) {
  nameController.text = profileData['name'] ?? '';
  dobController.text = profileData['age']?.toString() ?? '';

  // Normalize values to match dropdown list
  gender = _capitalize(profileData['gender']);        // e.g. "male" -> "Male"
  religion = _capitalize(profileData['religion']);
  cast = _capitalize(profileData['caste']);
  marital = _capitalize(profileData['marital_status']);
}

    }
  }

  String? _capitalize(String? input) {
  if (input == null || input.isEmpty) return null;
  return input[0].toUpperCase() + input.substring(1).toLowerCase();
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDF6F8),
      appBar: AppBar(backgroundColor: Color(0xFFFDF6F8)),
      body: Consumer<ProfileProvider>(
        builder: (context, provider, child) {
          if (provider.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (provider.errorMessage != null) {
            return Center(child: Text(provider.errorMessage!));
          }

          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Basic Details",
                  style: GoogleFonts.gothicA1(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF030016),
                    letterSpacing: -1,
                  ),
                ),
                Text(
                  "Let's Start with the Basics",
                  style: GoogleFonts.gothicA1(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF9A97AE),
                  ),
                ),
                SizedBox(height: 26.h),
                TextField(
                  controller: nameController,
                  decoration: _inputDecoration("Enter your full name"),
                ),
                SizedBox(height: 15.h),
                buildDropDown(
                  hint: "Select Gender",
                  items: genderlist,
                  value: gender,
                  onChange: (value) {
                    setState(() {
                      gender = value;
                    });
                  },
                ),
                SizedBox(height: 15.h),
                TextField(
                  controller: dobController,
                  decoration: _inputDecoration("Enter your Date of Birth"),
                ),
                SizedBox(height: 15.h),
                buildDropDown(
                  hint: "Select Religion",
                  items: religionList,
                  value: religion,
                  onChange: (value) {
                    setState(() {
                      religion = value;
                    });
                  },
                ),
                SizedBox(height: 15.h),
                buildDropDown(
                  hint: "Select Cast",
                  items: castlist,
                  value: cast,
                  onChange: (value) {
                    setState(() {
                      cast = value;
                    });
                  },
                ),
                SizedBox(height: 15.h),
                buildDropDown(
                  hint: "Select Marital Status",
                  items: martiallist,
                  value: marital,
                  onChange: (value) {
                    setState(() {
                      marital = value;
                    });
                  },
                ),
                SizedBox(height: 25.h),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (context) => UploadPhotoPage()),
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
                SizedBox(height: 10.h),
              ],
            ),
          );
        },
      ),
    );
  }

  InputDecoration _inputDecoration(String hintText) {
    return InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.r),
        borderSide: BorderSide(color: Color(0xFFDADADA), width: 1.5.w),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.r),
        borderSide: BorderSide(color: Color(0xFFDADADA), width: 1.5.w),
      ),
      hintText: hintText,
      hintStyle: GoogleFonts.gothicA1(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: Color(0xFF030016),
        letterSpacing: -0.2,
      ),
    );
  }
}

// class buildDropDown extends StatelessWidget {
//   final String hint;
//   final List<String> items;
//   final String? value;
//   final Function(String?) onChange;

//   const buildDropDown({
//     super.key,
//     required this.hint,
//     required this.items,
//     this.value,
//     required this.onChange,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonFormField<String>(
//       icon: Icon(Icons.keyboard_arrow_down),
//       value: value,
//       decoration: InputDecoration(
//         contentPadding: EdgeInsets.only(left: 20.w, right: 20.w),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(15.r),
//           borderSide: BorderSide(color: Color(0xFFDADADA), width: 1.5.w),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(15.r),
//           borderSide: BorderSide(color: Color(0xFFDADADA), width: 1.5.w),
//         ),
//         hintText: hint,
//         hintStyle: GoogleFonts.alexandria(
//           fontSize: 16.sp,
//           fontWeight: FontWeight.w400,
//           color: Color(0xFF030016),
//           letterSpacing: -0.2,
//         ),
//       ),
//       items: items.map((item) {
//         return DropdownMenuItem(
//           value: item,
//           child: Text(
//             item,
//             style: GoogleFonts.gothicA1(
//               fontSize: 16.sp,
//               fontWeight: FontWeight.w400,
//               color: Color(0xFF030016),
//               letterSpacing: -0.2,
//             ),
//           ),
//         );
//       }).toList(),
//       onChanged: onChange,
//     );
//   }
// }




class buildDropDown extends StatelessWidget {
  final String hint;
  final List<String> items;
  final String? value;
  final Function(String?) onChange;

  const buildDropDown({
    super.key,
    required this.hint,
    required this.items,
    this.value,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      icon: Icon(Icons.keyboard_arrow_down),
      value: (value != null && items.contains(value)) ? value : null, // ✅ check
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 20.w, right: 20.w),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: Color(0xFFDADADA), width: 1.5.w),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: Color(0xFFDADADA), width: 1.5.w),
        ),
        hintText: hint,
        hintStyle: GoogleFonts.alexandria(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: Color(0xFF030016),
          letterSpacing: -0.2,
        ),
      ),
      items: items.map((item) {
        return DropdownMenuItem(
          value: item,
          child: Text(
            item,
            style: GoogleFonts.gothicA1(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xFF030016),
              letterSpacing: -0.2,
            ),
          ),
        );
      }).toList(),
      onChanged: onChange,
    );
  }
}
