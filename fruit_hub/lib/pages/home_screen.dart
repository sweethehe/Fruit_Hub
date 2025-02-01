import 'package:flutter/material.dart';
import 'package:fruit_hub/components/ui.dart';

class HomeScreen extends StatefulWidget {
  final String username;

  const HomeScreen({super.key, required this.username});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.menu_rounded),
                  onPressed: () {},
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.shopping_basket_rounded,
                        color: lightOrange,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                    Transform.translate(
                      offset: const Offset(0, -5),
                      child: const Text(
                        "My Basket",
                        style: TextStyle(
                          color: darkBlue,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              Text.rich(
                TextSpan(
                    text: "Hello ${widget.username},",
                    style: TextStyle(fontSize: 25),
                    children: [
                      TextSpan(
                          text: " What fruit salad combo do you want today ?",
                          style: TextStyle(
                              color: darkBlue, fontWeight: FontWeight.bold))
                    ]),
              )
            ],
          ),
        ));
  }
}
