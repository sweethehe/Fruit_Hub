import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_hub/components/data_base.dart';
import 'package:fruit_hub/components/my_button.dart';
import 'package:fruit_hub/components/navigateToPage.dart';
import 'package:fruit_hub/components/scaffold_messenger.dart';
import 'package:fruit_hub/components/ui.dart';
import 'package:fruit_hub/pages/home_screen.dart';

class SaladDetail extends StatefulWidget {
  final String title;
  final String image;
  final String price;
  final String ingredients;
  final String comment;
  final String username;
  final Color color;
  const SaladDetail(
      {super.key,
      required this.title,
      required this.image,
      required this.price,
      required this.ingredients,
      required this.comment,
      required this.username,
      required this.color});

  @override
  State<SaladDetail> createState() => _SaladDetailState();
}

class _SaladDetailState extends State<SaladDetail> {
  int nbSalad = 0;

  void incrementSalad() {
    setState(() {
      nbSalad++;
    });
  }

  void decrementSalad() {
    if (nbSalad == 0) return;
    setState(() {
      nbSalad--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightOrange,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 47),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: white,
                      minWidth: 2,
                      onPressed: () {
                        navigateToPageNoPile(
                            context, HomeScreen(username: widget.username));
                      },
                      child: Text(
                        "< Go back",
                        style: TextStyle(
                            color: black, fontWeight: FontWeight.bold),
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Image.asset(
                widget.image,
                scale: 0.6,
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          child: Text(
                            widget.title,
                            style: TextStyle(
                                fontSize: 25.h,
                                fontWeight: FontWeight.bold,
                                color: darkBlue),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {
                                  decrementSalad();
                                },
                                icon: Icon(
                                  Icons.remove_circle_outline_outlined,
                                  color: const Color.fromARGB(255, 57, 57, 57),
                                  size: 27.h,
                                )),
                            Text(
                              nbSalad.toString(),
                              style: TextStyle(
                                  fontSize: 22.h,
                                  fontWeight: FontWeight.bold,
                                  color: black),
                            ),
                            IconButton(
                                onPressed: () {
                                  incrementSalad();
                                },
                                icon: Icon(
                                  Icons.add_circle_outline_outlined,
                                  color: const Color.fromARGB(160, 255, 165, 81),
                                  size: 27.h,
                                )),
                            Text(
                              widget.price,
                              style: TextStyle(
                                  fontSize: 21.h,
                                  fontWeight: FontWeight.bold,
                                  color: darkBlue),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        Divider(
                          color: Colors.grey[300],
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Text(
                            "One Pack Contain : ",
                            style: TextStyle(
                                fontSize: 21.h,
                                fontWeight: FontWeight.bold,
                                color: darkBlue,
                                decoration: TextDecoration.underline,
                                decorationColor: lightOrange,
                                decorationThickness: 4),
                          ),
                        ),
                        Text(widget.ingredients,
                            style: TextStyle(
                                fontSize: 16.h,
                                color: darkBlue,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(height: 20),
                        Divider(
                          color: Colors.grey[300],
                          thickness: 1,
                        ),
                        const SizedBox(height: 20),
                        Text(widget.comment,
                            style: TextStyle(
                                fontSize: 15.h,
                                color: const Color.fromARGB(199, 0, 0, 0),
                                fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromARGB(51, 255, 165, 81),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite_border_outlined,
                                        color: lightOrange,
                                        size: 20.h,
                                      ))),
                              MyButton(
                                  onPressed: () {
                                    if (nbSalad == 0) {
                                      return CustomSnackBar.show(context,
                                          "Please select at least one salad");
                                    }
                                    basket.add({
                                      "name": widget.title,
                                      "price": widget.price,
                                      "nbSalad": nbSalad,
                                      "image": widget.image,
                                      "color": widget.color,
                                    });
                                    CustomSnackBar.show(context,
                                          "${widget.title} added to your basket !");
                                  },
                                  text: "Add to basket",
                                  myColor: lightOrange)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
