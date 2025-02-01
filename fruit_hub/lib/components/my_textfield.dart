import 'package:flutter/material.dart';
import 'package:fruit_hub/components/ui.dart';

class MyTextfield extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final String hintText;
  final bool obscureText;
  const MyTextfield(
      {super.key,
      required this.controller,
      required this.label,
      required this.hintText,
      required this.obscureText});

  @override
  State<MyTextfield> createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText,
      controller: widget.controller,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(127, 224, 221, 221),
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(126, 195, 193, 193),
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        label: Text(
          widget.label,
          style: const TextStyle(
              color: Color.fromARGB(255, 143, 141, 141),
              fontWeight: FontWeight.bold,
              fontSize: 17),
        ),
        filled: true,
        fillColor: const Color.fromARGB(127, 224, 221, 221),
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: grey, fontSize: 18),
        contentPadding: const EdgeInsets.all(20),
      ),
      cursorColor: lightOrange,
    );
  }
}
