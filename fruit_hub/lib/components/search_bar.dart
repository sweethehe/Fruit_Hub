import 'package:flutter/material.dart';
import 'package:fruit_hub/components/ui.dart';

class MySearchBar extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  const MySearchBar(
      {super.key, required this.controller, required this.hintText});

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: const Color.fromARGB(50, 173, 172, 172),
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: grey),
          const SizedBox(width: 5),
          Expanded(
            child: TextFormField(
              controller: widget.controller,
              cursorColor: lightOrange,
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 135, 135, 135), fontSize: 16),
                contentPadding: const EdgeInsets.all(10),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
