// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:fruit_hub/components/ui.dart';

class MyButton extends StatefulWidget {
  void Function()? onPressed;
  final String text;
  final Color myColor;
  MyButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.myColor});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialButton(
      onPressed: widget.onPressed,
      minWidth: screenWidth * 0.7,
      color: widget.myColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(15),
      child: Text(
        widget.text,
        style: const TextStyle(
          color: white,
          fontSize: 19,
        ),
      ),
    );
  }
}
