import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_hub/components/basket_tile.dart';
import 'package:fruit_hub/components/my_button.dart';
import 'package:fruit_hub/components/my_textfield.dart';
import 'package:fruit_hub/components/navigateToPage.dart';
import 'package:fruit_hub/components/scaffold_messenger.dart';
import 'package:fruit_hub/components/show_dialog.dart';
import 'package:fruit_hub/components/ui.dart';
import 'package:fruit_hub/pages/home_screen.dart';

import '../components/data_base.dart';

class BasketScreen extends StatefulWidget {
  String username;
  BasketScreen({super.key, required this.username});

  @override
  State<BasketScreen> createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {
  String calculateTotal() {
    if (basket.isEmpty) return "0 FCFA";

    int total = 0;
    for (var item in basket) {
      String priceStr = item["price"].toString().split(" ")[0];
      int price = double.parse(priceStr).round();
      total += price * (item["nbSalad"] as int);
    }
    return "${total.toString()} FCFA";
  }

  TextEditingController deliveryController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: lightOrange,
            height: 135,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
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
                        )),
                  ),
                  Text(
                    "My Basket",
                    style: TextStyle(
                        color: white,
                        fontSize: 24.h,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                if (basket.isEmpty)
                  const Center(
                    child: Text(
                      "Your basket is empty",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: listGrey),
                    ),
                  )
                else
                  Expanded(
                    child: ListView.builder(
                      itemCount: basket.length,
                      itemBuilder: (context, index) {
                        final item = basket[index];
                        return BasketTile(
                          color: item["color"],
                          image: item["image"],
                          name: item["name"],
                          nbSalad: item["nbSalad"],
                          price: item["price"],
                          onTap: () {},
                        );
                      },
                    ),
                  ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(bottom: 40, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14.h),
                            ),
                            Text(calculateTotal(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.h,
                                    color: darkBlue))
                          ],
                        ),
                        MyButton(
                            onPressed: () {
                              if (basket.isEmpty) {
                                return CustomSnackBar.show(context,
                                          "Your basket is empty");
                              } else {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        height: 400,
                                        decoration: BoxDecoration(
                                            color: white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(50),
                                                topRight: Radius.circular(50))),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                MyTextfield(
                                                    controller:
                                                        deliveryController,
                                                    label: "Delivery address",
                                                    hintText:
                                                        "Somewhere in the world",
                                                    obscureText: false),
                                                MyTextfield(
                                                    controller:
                                                        deliveryController,
                                                    label: "Number we can call",
                                                    hintText: "00 00 00 00 00",
                                                    obscureText: false),
                                                const SizedBox(
                                                  height: 30,
                                                ),
                                                MaterialButton(
                                                    height: 50,
                                                    minWidth:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width -
                                                            80,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        side: BorderSide(
                                                            color:
                                                                lightOrange)),
                                                    color: white,
                                                    child: Text(
                                                      "Confirm",
                                                      style: TextStyle(
                                                          color: lightOrange,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    onPressed: () {
                                                      setState(() {
                                                        basket.clear();
                                                      });
                                                      Navigator.pop(context);
                                                      buildDialog(
                                                          context,
                                                          "Your order has been placed successfully !",
                                                          "Okay :)", go: () {
                                                        Navigator.pop(context);
                                                      });
                                                    }),
                                                const SizedBox(
                                                  height: 20,
                                                )
                                              ]),
                                        ),
                                      );
                                    });
                              }
                            },
                            text: "Checkout",
                            myColor: lightOrange)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
