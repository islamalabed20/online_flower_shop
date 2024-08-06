import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_flower_shop/view/widgets/custom_textfeild.dart';

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
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 110,
                        ),
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
                              const SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text("Upload PDF"),
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.black,
                                  backgroundColor: Colors.grey.shade300,
                                ),
                              ),
                              const SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text("Sign Up"),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purple,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                    "Already have an account? Login"),
                              ),
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
