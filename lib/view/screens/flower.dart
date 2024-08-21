import 'package:flutter/material.dart';
import 'package:online_flower_shop/view/widgets/custumbottombar.dart';
import 'package:online_flower_shop/view/widgets/floweritems.dart';
import 'package:online_flower_shop/view/widgets/flowersbuttons.dart';
import 'package:online_flower_shop/view/widgets/headerhome.dart';

class FlowersPage extends StatelessWidget {
  const FlowersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
           const Header(),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Flowers',
              style: TextStyle(
                  color: Color(0xff3C2367),
                  fontWeight: FontWeight.w500,
                  fontSize: 32,
                  fontFamily: 'Montserrat'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: FlowerButtons(
                      text: 'Filter',
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: FlowerButtons(
                      text: 'Best sellers',
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: FlowerButtons(
                      text: 'Most Gifted',
                    ),
                  ),
                ],
              ),
            ),
            FlowerItems()
          ],
        ),
      ),
       bottomNavigationBar: const CustomBottomBar(),
    );
  }
}
