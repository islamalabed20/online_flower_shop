import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:online_flower_shop/view/signup.dart';
import 'package:online_flower_shop/view/widgets/custom_button.dart';
import 'package:online_flower_shop/view/widgets/custom_textfeild.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double width = size.width;
    final double height = size.height;

    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      child: Scaffold(
        backgroundColor: const Color(0xFFE6F6F6),
        body: Stack(
          children: [
            // Top-right positioned element
            Positioned(
              top: height * -0.12,
              right: width * -0.25,
              child: Container(
                width: 250.0, // Adjust the size as needed
                height: 250.0, // Adjust the size as needed
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(243, 233, 245, 1),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: 0, // Adjust the top position as needed
              right: 0, // Adjust the right position as needed
              child: Image.asset(
                'assets/images/Bunch.png',
                width: 210,
              ),
            ),
            // Bottom-left positioned element
            Positioned(
              top: Get.height * 0.8, // Adjust the top position as needed
              right: Get.width * 0.6, //
              child: Container(
                width: 230.0, // Adjust the size as needed
                height: 230.0, // Adjust the size as needed
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(243, 233, 245, 1),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              bottom: 1, // Adjust the bottom position as needed
              right: Get.width * 0.53, // Adjust the left position as needed
              child: Image.asset('assets/images/download.png'),
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: Get.height * 1.2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.1,
                    vertical: height * 0.1,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Logo or title
                      Padding(
                        padding:
                            EdgeInsets.only(left: width * 0.01, bottom: 30),
                        child: Text(
                          "Logo",
                          style: TextStyle(
                            fontSize: width * 0.15,
                            fontWeight: FontWeight.w800,
                            color: const Color(0xFF3C2367),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.04),
                      // Text fields
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.01),
                        child: Column(
                          children: [
                            const CustomTextFormAuth(
                              labeltext: 'Email',
                              isNumber: false,
                            ),
                            const CustomTextFormAuth(
                              labeltext: 'Phone Number',
                              isNumber: false,
                            ),
                            const CustomTextFormAuth(
                              labeltext: 'Password',
                              isNumber: false,
                            ),
                            const Text(
                              "Should be none less than 8 characters",
                              style: TextStyle(color: Color(0XFF8C8A8C)),
                            ),
                            const Text(
                              "Forget password?",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff8ff0000),
                              ),
                            ),
                            SizedBox(height: height * 0.04),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Don't have an account? ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Color(0XFF8C8A8C),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.to(SignUpScreen());
                                  },
                                  child: const Text(
                                    "Sign up",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF3C2367),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const CustomButtomAuth(
                              text: 'Login',
                            ),
                          ],
                        ),
                      ),
                    ],
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
