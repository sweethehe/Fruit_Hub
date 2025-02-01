import 'package:flutter/material.dart';
import 'package:fruit_hub/components/my_button.dart';
import 'package:fruit_hub/components/navigateToPage.dart';
import 'package:fruit_hub/components/ui.dart';
import 'package:fruit_hub/pages/auth_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: screenHeight / 2,
            color: lightOrange,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Image.asset("assets/images/fruit_basket.png"),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Image.asset("assets/images/ombre.png"),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                children: [
                  Text(
                    "Get The Freshest Fruit Salad Combo",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "We deliver the best and freshest fruit salad in town. Order for a combo today !!!",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
                  ),
                  SizedBox(height: 50),
                  MyButton(
                      onPressed: () {
                        navigateToPage(context, AuthScreen());
                      },
                      text: "Let's Continue",
                      myColor: lightOrange)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
