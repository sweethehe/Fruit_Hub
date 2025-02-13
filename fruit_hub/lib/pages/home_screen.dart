import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_hub/components/data_base.dart';
import 'package:fruit_hub/components/navigateToPage.dart';
import 'package:fruit_hub/components/salad_tile.dart';
import 'package:fruit_hub/components/search_bar.dart';
import 'package:fruit_hub/components/ui.dart';
import 'package:fruit_hub/pages/basket_screen.dart';
import 'package:fruit_hub/pages/salad_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  final String username;

  const HomeScreen({super.key, required this.username});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final searchController = TextEditingController();
  int selectedCategory = 0;

  final List<String> categories = [
    "Hottest",
    "Popular",
    "New combo",
    "Favorites"
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> categoryContents = [
      SizedBox(
        height: 250,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SaladTile(
                onTap: () {
                  navigateToPage(
                      context,
                      SaladDetail(
                        title: salads[2]["name"],
                        image: salads[2]["image"],
                        price: salads[2]["price"],
                        ingredients: salads[2]["ingredients"],
                        comment: salads[2]["comment"],
                        username: widget.username,
                        color: Color(0xFFFFFAEB),
                      ));
                },
                color: Color(0xFFFFFAEB),
                name: "Quinoa Fruit Salad",
                price: "2500 FCFA",
                image: "assets/images/combo/quinoa_salad.png"),
            SaladTile(
                onTap: () {
                  navigateToPage(
                      context,
                      SaladDetail(
                        title: salads[3]["name"],
                        image: salads[3]["image"],
                        price: salads[3]["price"],
                        ingredients: salads[3]["ingredients"],
                        comment: salads[3]["comment"],
                        username: widget.username,
                        color: Color.fromARGB(72, 255, 165, 81),
                      ));
                },
                color: Color.fromARGB(72, 255, 165, 81),
                name: "Tropical Fruit Salad",
                price: "2500 FCFA",
                image: "assets/images/combo/tropical_fruit_salad.png"),
          ],
        ),
      ),
      SizedBox(
        height: 250,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SaladTile(
                onTap: () {
                  navigateToPage(
                      context,
                      SaladDetail(
                        title: salads[4]["name"],
                        image: salads[4]["image"],
                        price: salads[4]["price"],
                        ingredients: salads[4]["ingredients"],
                        comment: salads[4]["comment"],
                        username: widget.username,
                        color: Color(0xFFF1EFF6),
                      ));
                },
                color: Color(0xFFF1EFF6),
                name: "Melon Fruit Salad",
                price: "2500 FCFA",
                image: "assets/images/combo/melon_fruit_salad.png"),
            SaladTile(
                onTap: () {
                  navigateToPage(
                      context,
                      SaladDetail(
                        title: salads[5]["name"],
                        image: salads[5]["image"],
                        price: salads[5]["price"],
                        ingredients: salads[5]["ingredients"],
                        comment: salads[5]["comment"],
                        username: widget.username,
                        color: Color.fromARGB(72, 255, 165, 81),
                      ));
                },
                color: Color.fromARGB(72, 255, 165, 81),
                name: "Berry mango combo",
                price: "2500 FCFA",
                image: "assets/images/combo/berry_fruit_combo.png"),
          ],
        ),
      ),
      SizedBox(
        height: 250,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SaladTile(
                onTap: () {
                  navigateToPage(
                      context,
                      SaladDetail(
                        title: salads[5]["name"],
                        image: salads[5]["image"],
                        price: salads[5]["price"],
                        ingredients: salads[5]["ingredients"],
                        comment: salads[5]["comment"],
                        username: widget.username,
                        color: Color(0xFFFFFAEB),
                      ));
                },
                color: Color(0xFFFFFAEB),
                name: "Berry Fruit Salad",
                price: "2500 FCFA",
                image: "assets/images/combo/berry_fruit_combo.png"),
            SaladTile(
                onTap: () {
                  navigateToPage(
                      context,
                      SaladDetail(
                        title: salads[4]["name"],
                        image: salads[4]["image"],
                        price: salads[4]["price"],
                        ingredients: salads[4]["ingredients"],
                        comment: salads[4]["comment"],
                        username: widget.username,
                        color: Color.fromARGB(72, 255, 165, 81),
                      ));
                },
                color: Color.fromARGB(72, 255, 165, 81),
                name: "Berry mango combo",
                price: "2500 FCFA",
                image: "assets/images/combo/berry_fruit_combo.png"),
          ],
        ),
      ),
      SizedBox(
        height: 250,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SaladTile(
                onTap: () {
                  navigateToPage(
                      context,
                      SaladDetail(
                        title: salads[0]["name"],
                        image: salads[0]["image"],
                        price: salads[0]["price"],
                        ingredients: salads[0]["ingredients"],
                        comment: salads[0]["comment"],
                        username: widget.username,
                        color: Color(0xFFFFFAEB),
                      ));
                },
                color: Color(0xFFFFFAEB),
                name: "Honey lime combo",
                price: "2500 FCFA",
                image: "assets/images/combo/Honey_lime_combo.png"),
            SaladTile(
                onTap: () {
                  navigateToPage(
                      context,
                      SaladDetail(
                        title: salads[4]["name"],
                        image: salads[4]["image"],
                        price: salads[4]["price"],
                        ingredients: salads[4]["ingredients"],
                        comment: salads[4]["comment"],
                        username: widget.username,
                        color: Color.fromARGB(72, 255, 165, 81),
                      ));
                },
                color: Color.fromARGB(72, 255, 165, 81),
                name: "Berry mango combo",
                price: "2500 FCFA",
                image: "assets/images/combo/berry_fruit_combo.png"),
          ],
        ),
      )
    ];

    ///////////////////////////////////////////////////////////////////////////////////

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              scrolledUnderElevation: 0,
              surfaceTintColor: Colors.transparent,
              automaticallyImplyLeading: false,
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.menu_rounded),
                      onPressed: () {},
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.shopping_basket_rounded,
                            color: lightOrange,
                            size: 30,
                          ),
                          onPressed: () {
                            navigateToPage(
                                context,
                                BasketScreen(
                                  username: widget.username,
                                ));
                          },
                        ),
                        Transform.translate(
                          offset: const Offset(0, -5),
                          child: GestureDetector(
                            onTap: () {
                              navigateToPage(
                                  context,
                                  BasketScreen(
                                    username: widget.username,
                                  ));
                            },
                            child: const Text(
                              "My Basket",
                              style: TextStyle(
                                color: darkBlue,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                      text: "Hello ${widget.username},",
                      style: TextStyle(fontSize: 20.h),
                      children: [
                        TextSpan(
                            text:
                                " What fruit salad \ncombo do you want today ?",
                            style: TextStyle(
                                color: darkBlue, fontWeight: FontWeight.bold))
                      ]),
                ),
                const SizedBox(height: 24),
                // Search Bar
                Row(
                  children: [
                    Expanded(
                      child: MySearchBar(
                          controller: searchController,
                          hintText: "Search for a fruit salad combo"),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.tune_rounded))
                  ],
                ),
                // End of Search Bar
                const SizedBox(height: 20),
                Text(
                  "Recommended Combo",
                  style: TextStyle(
                      fontSize: 24.h,
                      color: darkBlue,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SaladTile(
                          onTap: () {
                            navigateToPage(
                                context,
                                SaladDetail(
                                  title: salads[1]["name"],
                                  image: salads[1]["image"],
                                  price: salads[1]["price"],
                                  ingredients: salads[1]["ingredients"],
                                  comment: salads[1]["comment"],
                                  username: widget.username,
                                  color: white,
                                ));
                          },
                          color: white,
                          name: "Honey lime combo",
                          price: "2500 FCFA",
                          image: "assets/images/combo/Honey_lime_combo.png"),
                      SaladTile(
                          onTap: () {
                            navigateToPage(
                                context,
                                SaladDetail(
                                  title: salads[0]["name"],
                                  image: salads[0]["image"],
                                  price: salads[0]["price"],
                                  ingredients: salads[0]["ingredients"],
                                  comment: salads[0]["comment"],
                                  username: widget.username,
                                  color: white,
                                ));
                          },
                          color: white,
                          name: "Berry mango combo",
                          price: "2500 FCFA",
                          image: "assets/images/combo/berry_fruit_combo.png"),
                    ],
                  ),
                ),
                ////////////////
                const SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCategory = index;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 17.h),
                          child: Text(
                            categories[index],
                            style: TextStyle(
                              color: selectedCategory == index
                                  ? darkBlue
                                  : listGrey,
                              fontWeight: selectedCategory == index
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              fontSize: selectedCategory == index ? 22.h : 16.h,
                              decoration: selectedCategory == index
                                  ? TextDecoration.underline
                                  : TextDecoration.none,
                              decorationThickness: 4,
                              decorationColor: selectedCategory == index
                                  ? lightOrange
                                  : Colors.transparent,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                IndexedStack(
                  index: selectedCategory,
                  children: categoryContents,
                ),
              ],
            ),
          ),
        ));
  }
}
