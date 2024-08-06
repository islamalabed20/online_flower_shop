import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String labeltext;
  final TextEditingController? mycontroller;
  //final String? Function(String?) valid;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;

  const CustomTextFormAuth(
      {super.key,
      this.obscureText,
      this.onTapIcon,
      required this.labeltext,
      this.mycontroller,
      //  required this.valid,
      required this.isNumber});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 15,
      ),
      child: TextField(
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        // validator: valid,
        controller: mycontroller,
        obscureText: obscureText == null || obscureText == false ? false : true,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide.none,
          ),
          label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 9),
              child: Text(
                labeltext,
                style: const TextStyle(
                    fontWeight: FontWeight.w400, color: Colors.grey),
              )),
        ),
      ),
    );
  }
}
