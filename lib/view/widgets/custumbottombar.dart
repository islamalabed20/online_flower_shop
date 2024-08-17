import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_flower_shop/view/screens/signup.dart';

class CustomBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset('assets/images/buttombar.png'),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {
                  Get.to(SignUpScreen());
                },
                child: Image.asset(
                  "assets/images/home.png",
                  width: 30,
                )),
            InkWell(
                child: Image.asset(
              "assets/images/shopping-basket.png",
              width: 30,
            )),
            InkWell(
                child: Image.asset(
              "assets/images/setting.png",
              width: 30,
            )),
            InkWell(
                child: Image.asset(
              "assets/images/Ellipse.png",
              width: 30,
            ))
          ],
        ),
      ),
    ]);
  }
}
