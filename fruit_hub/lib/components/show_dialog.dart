import 'package:flutter/material.dart';
import 'package:fruit_hub/components/ui.dart';

Future buildDialog(
    BuildContext context, String title, String button,
    {Function()? go}) {
  return showDialog(
      context: context,
      builder: (context) => SimpleDialog(
            title: Text(
              title,
              style: const TextStyle(
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
            contentPadding: const EdgeInsets.all(20),
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              button,
                              style: TextStyle(fontSize: 18, color: lightOrange),
                            )),
                      ],
                    )
                  ],
                ),
              )
            ],
          ));
}
