import 'package:ai_powered_app/screen/login.page.dart';
import 'package:ai_powered_app/screen/providerScreen/resisterProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController dobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Register",
          style: GoogleFonts.gothicA1(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),

      body: Consumer<RegisterProvider>(
        builder: (context, provider, child) {
          return Stack(
            children: [
              SingleChildScrollView(
                padding: EdgeInsets.all(20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildLabel("Full Name"),
                    _buildTextField(
                      controller: nameController,
                      hint: "Enter your name",
                    ),

                    SizedBox(height: 15.h),
                    _buildLabel("Email"),
                    _buildTextField(
                      controller: emailController,
                      hint: "Enter your email",
                    ),

                    SizedBox(height: 15.h),
                    _buildLabel("Password"),
                    _buildTextField(
                      controller: passwordController,
                      hint: "Enter password",
                      obscure: true,
                    ),

                    SizedBox(height: 15.h),
                    _buildLabel("Phone"),
                    _buildTextField(
                      controller: phoneController,
                      hint: "Enter phone number",
                      keyboardType: TextInputType.phone,
                    ),

                    SizedBox(height: 15.h),
                    _buildLabel("Gender"),
                    _buildTextField(
                      controller: genderController,
                      hint: "Male / Female / Other",
                    ),

                    SizedBox(height: 15.h),
                    _buildLabel("Date of Birth"),
                    _buildTextField(
                      controller: dobController,
                      hint: "YYYY-MM-DD",
                      keyboardType: TextInputType.datetime,
                    ),

                    SizedBox(height: 30.h),

                    GestureDetector(
                      onTap: () async {
                        await provider.register(
                          name: nameController.text,
                          email: emailController.text,
                          password: passwordController.text,
                          phone: phoneController.text,
                          gender: genderController.text,
                          dateOfBirth: dobController.text,
                        );

                        if (provider.errorMessage != null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(provider.errorMessage!)),
                          );

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Registration successful"),
                            ),
                          );
                        }
                      },
                      child: Container(
                        width: double.infinity,
                        height: 53.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: const Color(0xFFFF9E0D),
                        ),
                        child: Center(
                          child: Text(
                            'Register',
                            style: GoogleFonts.gothicA1(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              letterSpacing: -1,
                            ),
                          ),
                        ),
                      ),
                    ),
SizedBox(height: 20,),

                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Login",
                            style: GoogleFonts.gothicA1(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                 
                 
                  ],
                ),
              ),

              // Loader Overlay
              if (provider.isLoading)
                Container(
                  color: Colors.black.withOpacity(0.3),
                  child: const Center(
                    child: CircularProgressIndicator(color: Color(0xFFFF9E0D)),
                  ),
                ),
            ],
          );
        },
      ),

      //        SingleChildScrollView(
      //         padding: EdgeInsets.all(20.w),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             _buildLabel("Full Name"),
      //             _buildTextField(controller: nameController, hint: "Enter your name"),

      //             SizedBox(height: 15.h),
      //             _buildLabel("Email"),
      //             _buildTextField(controller: emailController, hint: "Enter your email"),

      //             SizedBox(height: 15.h),
      //             _buildLabel("Password"),
      //             _buildTextField(controller: passwordController, hint: "Enter password", obscure: true),

      //             SizedBox(height: 15.h),
      //             _buildLabel("Phone"),
      //             _buildTextField(controller: phoneController, hint: "Enter phone number", keyboardType: TextInputType.phone),

      //             SizedBox(height: 15.h),
      //             _buildLabel("Gender"),
      //             _buildTextField(controller: genderController, hint: "Male / Female / Other"),

      //             SizedBox(height: 15.h),
      //             _buildLabel("Date of Birth"),
      //             _buildTextField(controller: dobController, hint: "YYYY-MM-DD", keyboardType: TextInputType.datetime),

      //             SizedBox(height: 30.h),

      //             GestureDetector(
      //            onTap: () async {
      //            final provider = Provider.of<RegisterProvider>(context, listen: false);
      //     await provider.register(
      //     name: nameController.text,
      //     email: emailController.text,
      //     password: passwordController.text,
      //     phone: phoneController.text,
      //     gender: genderController.text,
      //     dateOfBirth: dobController.text,
      //     );
      //     if (provider.errorMessage != null) {
      //     ScaffoldMessenger.of(context).showSnackBar(
      //       SnackBar(content: Text(provider.errorMessage!)),
      //     );
      //     }
      //     else {
      //     ScaffoldMessenger.of(context).showSnackBar(
      //       SnackBar(content: Text("Registration successful")),
      //     );
      //     // Navigate or reset form if needed
      //     }
      // },
      //               child: Container(
      //                 width: double.infinity,
      //                 height: 53.h,
      //                 decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(15.r),
      //                   color: Color(0xFFFF9E0D),
      //                 ),
      //                 child: Center(
      //                   child: Text(
      //                     'Register',
      //                     style: GoogleFonts.gothicA1(
      //                       fontSize: 18.sp,
      //                       fontWeight: FontWeight.w600,
      //                       color: Colors.white,
      //                       letterSpacing: -1,
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
    );
  }

  Widget _buildLabel(String label) {
    return Text(
      label,
      style: GoogleFonts.gothicA1(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: Color(0xFF030016),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    String? hint,
    bool obscure = false,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        hintText: hint,
        hintStyle: GoogleFonts.gothicA1(color: Colors.grey, fontSize: 14.sp),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: Color(0xFFFF9E0D), width: 1.5.w),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: Color(0xFFFF9E0D), width: 1.5.w),
        ),
      ),
    );
  }
}
