import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_flower_shop/controller/signupcontroller.dart';
// Import your controller

class CustomTextFormAuth extends StatelessWidget {
  final String labeltext;
  final TextEditingController? mycontroller;
  final bool isNumber;
  final bool isPasswordField;
  final bool obscureText;
  final Icon? icon;
  final VoidCallback? onTapIcon;

  const CustomTextFormAuth({
    Key? key,
    required this.labeltext,
    this.mycontroller,
    required this.isNumber,
    this.isPasswordField = false,
    this.obscureText = false,
    this.icon,
    this.onTapIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the SignUpController instance
    final SignUpController controller = Get.find();

    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextField(
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        controller: mycontroller,
        obscureText: isPasswordField
            ? (obscureText
                ? !controller.isPasswordVisible.value
                : !controller.isRePasswordVisible.value)
            : obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide.none,
          ),
          labelText: labeltext,
          //  prefixIcon: icon,
          suffixIcon: isPasswordField
              ? IconButton(
                  icon: Icon(
                    isPasswordField
                        ? (labeltext == 'Password'
                            ? controller.isPasswordVisible.value
                                ? Icons.visibility
                                : Icons.visibility_off
                            : controller.isRePasswordVisible.value
                                ? Icons.visibility
                                : Icons.visibility_off)
                        : Icons.remove_red_eye,
                  ),
                  onPressed: onTapIcon ??
                      () {
                        if (labeltext == 'Password') {
                          controller.togglePasswordVisibility();
                        } else {
                          controller.toggleRePasswordVisibility();
                        }
                      },
                )
              : null,
        ),
      ),
    );
  }
}
