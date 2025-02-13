import 'package:flutter/material.dart';
import 'package:fruit_hub/components/ui.dart';

class CustomSnackBar {
  static void show(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Row(
        children: [
          const Icon(Icons.info_rounded, color: white),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              message,
              style: const TextStyle(color: white, fontSize: 18),
            ),
          ),
        ],
      ),
      duration: const Duration(seconds: 3),
      backgroundColor: const Color.fromARGB(255, 254, 187, 123),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      elevation: 4,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
