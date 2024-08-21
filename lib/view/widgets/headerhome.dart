import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset('assets/images/Rectangle42.png'),
        Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Classic.png'),
                  Image.asset('assets/images/Logo.png'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                        labelText: 'Search',
                        labelStyle: const TextStyle(
                            color: Color(0xff8C8A8C),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                            fontSize: 20),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical:
                              10.0, // Adjust this value to decrease or increase height
                          horizontal: 18.0,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/images/search.png'))),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                children: [Image.asset('assets/images/categories.png')],
              ),
            )
          ],
        ),
      ],
    );
  }
}
