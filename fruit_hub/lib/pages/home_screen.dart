import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_hub/components/salad_tile.dart';
import 'package:fruit_hub/components/search_bar.dart';
import 'package:fruit_hub/components/ui.dart';

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

  ///////////////////////////////////////////////////////////////////////
  
  
  final List<Widget> categoryContents = [
    SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SaladTile(
              name: "Quinoa Salad",
              price: "2500 FCFA",
              image: "assets/images/combo/quinoa_salad.png"),
          SaladTile(
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
              name: "Melon Fruit Salad",
              price: "2500 FCFA",
              image: "assets/images/combo/melon_fruit_salad.png"),
          SaladTile(
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
              name: "Berry Fruit Salad",
              price: "2500 FCFA",
              image: "assets/images/combo/berry_fruit_combo.png"),
          SaladTile(
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
              name: "Honey lime combo",
              price: "2500 FCFA",
              image: "assets/images/combo/Honey_lime_combo.png"),
          SaladTile(
              name: "Berry mango combo",
              price: "2500 FCFA",
              image: "assets/images/combo/berry_fruit_combo.png"),
        ],
      ),
    )
  ];



  ////////////////////////////////////////////////
  



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
                      onPressed: () {},
                    ),
                    Transform.translate(
                      offset: const Offset(0, -5),
                      child: const Text(
                        "My Basket",
                        style: TextStyle(
                          color: darkBlue,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
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
                      style: TextStyle(fontSize: 20),
                      children: [
                        TextSpan(
                            text: " What fruit salad \ncombo do you want today ?",
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
                          name: "Honey lime combo",
                          price: "2500 FCFA",
                          image: "assets/images/combo/Honey_lime_combo.png"),
                      SaladTile(
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
                              fontSize: selectedCategory == index ? 24.h : 16.h,
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
