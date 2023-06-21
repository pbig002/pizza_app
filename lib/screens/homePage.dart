import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pizza_app_byme/models/pizza_topping.dart';

import '../models/pizza_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  List<bool> isSeleted = [false, true, false];
  List<Pizza> myPizzas = [
    Pizza(
      pizzaTitle: "Greek",
      pizzaDesc: "feta cheese, black, red onion",
      pizzaImage: 'assets/pizzas/pizza1.png',
      pizzaPriceS: 8,
      pizzaPriceM: 11,
      pizzaPriceL: 13,
    ),
    Pizza(
      pizzaTitle: "Neapolitan",
      pizzaDesc: "mozzarella, tomatoes, oregano",
      pizzaImage: 'assets/pizzas/pizza2.png',
      pizzaPriceS: 7,
      pizzaPriceM: 10,
      pizzaPriceL: 12,
    ),
    Pizza(
      pizzaTitle: "chicago",
      pizzaDesc: "mozzarella, tomatoes, oregano",
      pizzaImage: 'assets/pizzas/pizza3.png',
      pizzaPriceS: 8,
      pizzaPriceM: 11,
      pizzaPriceL: 13,
    ),
  ];
  TextEditingController sized = TextEditingController();
  late PageController _pageController = PageController();
  void _priceSized(int index) {
    if (index == 0) {
      print("${myPizzas[index].pizzaPriceS}");
    } else if (index == 1) {
      print("${myPizzas[index].pizzaPriceM}");
    } else if (index == 2) {
      print("${myPizzas[index].pizzaPriceL}");
    }
  }

  double pizzaSize = 215;
  double pizzaSizeS = 195;
  double pizzaSizeM = 215;
  double pizzaSizeL = 240;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 222, 222, 222),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(20),
        child: AppBar(backgroundColor: Color.fromARGB(255, 205, 204, 204)),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.thumb_up_alt_outlined,
                      color: Colors.grey[600],
                      size: 24,
                    ),
                  ),
                  Expanded(
                      child: ScrollConfiguration(
                    behavior: const MaterialScrollBehavior()
                        .copyWith(overscroll: false),
                    child: PageView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        controller: null,
                        itemCount: myPizzas.length,
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${myPizzas[index].pizzaTitle}",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Text(
                                "${myPizzas[index].pizzaDesc}",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                            ],
                          );
                        }),
                  )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_basket_outlined,
                        size: 24,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 240,
              alignment: Alignment.center,
              child: Stack(children: [
                Center(
                  child: AnimatedContainer(
                    height: pizzaSize,
                    duration: Duration(),
                    child: Image.asset(
                      "assets/pizzas/plate_5.png",
                    ),
                  ),
                ),
                Center(
                  child: AnimatedContainer(
                      height: 210,
                      duration: Duration(microseconds: 200),
                      child: PageView(
                        scrollDirection: Axis.horizontal,
                        controller: null,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/pizzas/pizza1.png"),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/pizzas/pizza2.png"),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/pizzas/pizza3.png"),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ]),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "\$10",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 40,
              child: ToggleButtons(
                renderBorder: false,
                children: [
                  Container(
                    decoration: BoxDecoration(),
                    child: Text("S"),
                  ),
                  Container(
                    child: Text("M"),
                  ),
                  Container(
                    child: Text("L"),
                  ),
                ],
                isSelected: isSeleted,
                highlightColor: Color.fromARGB(255, 111, 234, 234),
                onPressed: (int index) {
                  _priceSized(index);
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "0/3",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 80,
              child: CarouselSlider.builder(
                itemCount: ingredients.length,
                options: CarouselOptions(
                  height: 60,
                  viewportFraction: 0.3,
                  autoPlay: false,
                  reverse: true,
                  initialPage: 3,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Image.asset(
                    ingredients[index].image,
                    height: 80,
                  );
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                print("${ingredients.length}");
              },
              child: Container(
                width: 170,
                height: 70,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 60, 60, 60),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(Icons.add_shopping_cart_outlined),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Add to cart",
                          // textAlign: TextAlign.end,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
