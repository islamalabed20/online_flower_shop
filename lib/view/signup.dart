import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:online_flower_shop/view/widgets/custom_button.dart';
import 'package:online_flower_shop/view/widgets/custom_textfeild.dart';
import 'package:online_flower_shop/view/widgets/pdfbuttun.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFFE6F6F6),
        body: Stack(
          children: [
            ClipPath(
              clipper: BackgroundClipper(),
              child: Column(
                children: [
                  Container(
                    color: const Color(0xFFF6E1D8),
                    height: MediaQuery.of(context).size.height / 2,
                  ),
                ],
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.5,
              top: MediaQuery.of(context).size.height * 0.01,
              child: Image.asset(
                'assets/images/download1.png',
                width: 170,
              ),
            ),
            SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 70),
                        const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 25),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CircleAvatar(
                          radius: 40,
                          backgroundColor: Color(0xFFD9D9D9),
                          child: Icon(Icons.person_2_rounded,
                              size: 40, color: Colors.grey),
                        ),
                        const SizedBox(height: 10),
                        const Text("Add Profile Photo"),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            children: [
                              const CustomTextFormAuth(
                                labeltext: 'Email',
                                isNumber: false,
                              ),
                              const CustomTextFormAuth(
                                labeltext: 'Phone Number',
                                isNumber: true,
                              ),
                              const CustomTextFormAuth(
                                labeltext: 'User Name',
                                isNumber: false,
                              ),
                              const CustomTextFormAuth(
                                labeltext: 'Password',
                                isNumber: false,
                              ),
                              const CustomTextFormAuth(
                                labeltext: 'Re Password',
                                isNumber: false,
                              ),
                              CustomPDFButton(),
                              const CustomButtomAuth(
                                text: 'Sign Up',
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Already have an account?  ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0XFF8C8A8C),
                                      ),
                                    ),
                                    Text(
                                      "Login",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF3C2367),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Divider(
                                  color: Colors.grey,
                                  thickness: 1,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
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

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * .2);
    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
