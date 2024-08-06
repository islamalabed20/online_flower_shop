import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VerificationCodePage extends StatelessWidget {
  const VerificationCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    const pinTheme = PinTheme(
        width: 50,
        height: 50,
        textStyle: TextStyle(
          fontSize: 22,
          color: Colors.black,
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.black, // Set the color of the bottom border
              width: 2.0, // Set the width of the bottom border
            ),
          ),
        ),
        margin: EdgeInsets.symmetric(horizontal: 5.0));
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/Rectangle.png'),
              Center(child: Image.asset('assets/images/Monstera.png'))
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Verification Code',
            style: TextStyle(
                fontSize: 22,
                color: Color(0xff8C8A8C),
                fontFamily: 'Montserrat'),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Pleas enter verification code sent to',
                    style: TextStyle(
                        color: Color(0xff8C8A8C), fontFamily: 'Montserrat'),
                  ),
                  const Text(
                    'Email address .....@Gmail.com',
                    style: TextStyle(
                        color: Color(0xff8C8A8C), fontFamily: 'Montserrat'),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    'Valid to 10 minuts',
                    style: TextStyle(
                        color: Color(0xff8C8A8C),
                        fontFamily: 'Montserrat',
                        fontSize: 15),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    'Re send code',
                    style: TextStyle(
                        color: Color(0xff3C2367),
                        fontFamily: 'Montserrat',
                        fontSize: 20),
                  ),
                  Container(
                    child: Pinput(
                      length: 6,
                      defaultPinTheme: pinTheme,
                      focusedPinTheme: pinTheme.copyWith(
                          decoration: pinTheme.decoration!.copyWith(
                        border: Border.all(color: Colors.green),
                      )),
                      onCompleted: (pin) => debugPrint(pin),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Verification code consists of ',
                    style: TextStyle(
                        color: Color(0xff8C8A8C),
                        fontFamily: 'Montserrat',
                        fontSize: 13),
                  ),
                  const Text(
                    'numbers and letters ',
                    style: TextStyle(
                        color: Color(0xff8C8A8C),
                        fontFamily: 'Montserrat',
                        fontSize: 13),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    onPressed: () {},
                    color: const Color(0xFFF3E9F5),
                    textColor: Colors.white,
                    minWidth: 220,
                    height: 58,
                    child: Text('Submit ',
                        style: const TextStyle(
                            color: Color(0xff3C2367),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w900,
                            fontSize: 16)),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
