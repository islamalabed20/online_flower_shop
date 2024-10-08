import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_flower_shop/controller/paymentcontroller.dart';
import 'package:online_flower_shop/view/pages/paymentone.dart';
import 'package:online_flower_shop/view/pages/paymenttwo.dart';

class PaymentPage extends StatelessWidget {
  final PaymentController controller = Get.put(PaymentController());

  PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6F6F6),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller.pageController,
              physics: const NeverScrollableScrollPhysics(), // Disable swipe
              children: [
                _buildFirstPart(context),
                _buildSecondPart(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFirstPart(BuildContext context) {
    return PaymentOnePage();
  }

  Widget _buildSecondPart() {
    return PaymentTwoPage();
  }
}
