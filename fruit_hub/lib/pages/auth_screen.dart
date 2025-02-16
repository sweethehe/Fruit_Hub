import 'package:flutter/material.dart';
import 'package:fruit_hub/components/my_button.dart';
import 'package:fruit_hub/components/my_textfield.dart';
import 'package:fruit_hub/components/navigateToPage.dart';
import 'package:fruit_hub/components/scaffold_messenger.dart';
// import 'package:fruit_hub/components/navigateToPage.dart';
import 'package:fruit_hub/components/ui.dart';
import 'package:fruit_hub/pages/home_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: screenHeight / 2,
              color: lightOrange,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 25),
                    Image.asset("assets/images/fruit_basket_2.png"),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Image.asset("assets/images/ombre_2.png"),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 80, bottom: 30),
              child: Text(
                "What is your username ?",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MyTextfield(
                  controller: username,
                  label: "Username",
                  hintText: "Tell us your username",
                  obscureText: false),
            ),
            SizedBox(height: 50),
            MyButton(
              onPressed: () {
                if (username.text.trim().isNotEmpty) {
                  navigateToPage(
                      context, HomeScreen(username: username.text.trim()));
                } else {
                  CustomSnackBar.show(context, "Please enter a username", const Color.fromARGB(255, 254, 187, 123),);
                }
              },
              text: "Start Ordering",
              myColor: lightOrange,
            ),
          ],
        ),
      ),
    );
  }
}
