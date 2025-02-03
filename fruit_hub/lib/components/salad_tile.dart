import 'package:flutter/material.dart';
import 'package:fruit_hub/components/ui.dart';

class SaladTile extends StatefulWidget {
  final String name;
  final String price;
  final String image;
  const SaladTile(
      {super.key,
      required this.name,
      required this.price,
      required this.image});

  @override
  State<SaladTile> createState() => _SaladTileState();
}

class _SaladTileState extends State<SaladTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 190,
        decoration: BoxDecoration(
          color: white,
          borderRadius: const BorderRadius.all(Radius.circular(18)),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border_rounded,
                    color: lightOrange,
                  )),
            ),
            Image.asset(
              widget.image,
              height: 100,
              width: 100,
            ),
            const SizedBox(height: 10),
            Text(widget.name,
                style: const TextStyle(
                    color: darkBlue,
                    fontSize: 17,
                    fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.price,
                    style: TextStyle(
                        color: lightOrange,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_circle_outline_rounded,
                      color: lightOrange,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
