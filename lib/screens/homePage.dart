import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pizza App")),
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
                        controller: null,
                        itemCount: myPizzas.length,
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AnimatedContainer(
                                duration: Duration(milliseconds: 400),
                                child: Text("${null}"),
                              )
                            ],
                          );
                        }),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
