import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_hub/components/ui.dart';

class BasketTile extends StatefulWidget {
  final String name;
  final String price;
  final String image;
  final Color color;
  final int nbSalad;
  final Function() onTap;
  const BasketTile(
      {super.key,
      required this.onTap,
      required this.color,
      required this.name,
      required this.price,
      required this.image,
      required this.nbSalad});

  @override
  State<BasketTile> createState() => _BasketTileState();
}

class _BasketTileState extends State<BasketTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10.h),
                 decoration: BoxDecoration(
                   color: widget.color,
                   borderRadius: BorderRadius.all(Radius.circular(20)),
                 ),
                  child: Image.asset(widget.image,
                  height: 50.h,
                  width: 50.h,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.name, style: TextStyle(fontSize: 15.h, fontWeight: FontWeight.bold),),
                    Text("${widget.nbSalad}packs", style: TextStyle(fontSize: 14.h),)
                  ],
                ),
                Text(widget.price, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.h, color: darkBlue),)
              ],
          ),
          const SizedBox(height: 15),
          Divider(
            color: const Color.fromARGB(93, 173, 172, 172),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
