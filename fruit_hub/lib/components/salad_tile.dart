import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_hub/components/data_base.dart';
import 'package:fruit_hub/components/ui.dart';

class SaladTile extends StatefulWidget {
  final String name;
  final String price;
  final String image;
  final Color color;
  final Function() onTap;
  const SaladTile(
      {super.key,
      required this.onTap,
      required this.color,
      required this.name,
      required this.price,
      required this.image});

  @override
  State<SaladTile> createState() => _SaladTileState();
}

class _SaladTileState extends State<SaladTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: EdgeInsets.only(right: 24.w),
        child: Container(
          width: 180.w,
          height: 183.h,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.all(Radius.circular(16.r)),
          ),
          padding: EdgeInsets.all(10.h),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      favorites.any((item) => item["name"] == widget.name)
                          ? Icons.favorite_outlined
                          : Icons.favorite_border_outlined,
                      color: lightOrange,
                      size: 20.h,
                    )),
              ),
              Image.asset(
                widget.image,
                height: 80.h,
                width: 80.h,
              ),
              SizedBox(height: 8.h),
              Text(widget.name,
                  style: TextStyle(
                      color: darkBlue,
                      fontSize: 16.h,
                      fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(widget.price,
                      style: TextStyle(
                          color: lightOrange,
                          fontSize: 14.h,
                          fontWeight: FontWeight.bold)),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_circle_outline_rounded,
                        size: 24.h,
                        color: lightOrange,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
