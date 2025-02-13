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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: const TextStyle(
                color: darkBlue, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 10),
          TextFormField(
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
              filled: true,
              fillColor: const Color.fromARGB(127, 224, 221, 221),
              hintText: widget.hintText,
              hintStyle: const TextStyle(color: grey, fontSize: 18),
              contentPadding: const EdgeInsets.all(20),
            ),
            cursorColor: lightOrange,
          ),
        ],
      ),
    );
  }
}
