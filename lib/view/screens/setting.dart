import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:online_flower_shop/controller/signupcontroller.dart';
import 'package:online_flower_shop/view/widgets/customsetting.dart';
import 'package:online_flower_shop/view/widgets/custumbottombar.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // i add this controller to test the arrow back
    Get.put(SignUpController());
    //
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          //height: Get.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Image.asset('assets/images/Rectangle128.png'),
                    Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Image.asset('assets/images/Ellipse2.png'),
                        Image.asset('assets/images/WeddingFlower.png')
                      ],
                    ),
                    const Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Sittings',
                          style: TextStyle(
                              color: Color(0xff3C2367),
                              fontSize: 25,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        CustomSettingMenu(
                          text: 'Account Information',
                        ),
                        CustomSettingMenu(
                          text: 'payment Methods',
                        ),
                        CustomSettingMenu(
                          text: 'Order History',
                        ),
                        CustomSettingMenu(
                          text: 'Security Sittings',
                        ),
                        CustomSettingMenu(
                          text: 'Support & Feedback',
                        ),
                        CustomSettingMenu(
                          text: 'Language Sittings',
                        ),
                        CustomSettingMenu(
                          text: 'Legal Information',
                        ),
                        CustomSettingMenu(
                          text: 'About us',
                        ),
                        CustomSettingMenu(
                          text: 'Log Out',
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(alignment: Alignment.bottomCenter, children: [
                  Image.asset('assets/images/Whiteroseborder.png'),
                  CustomBottomBar()
                ]),
              ],
            ),
          ),
        ));
  }
}
