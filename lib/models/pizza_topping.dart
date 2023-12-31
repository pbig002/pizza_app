import 'package:flutter/material.dart';

class Ingredient {
  Ingredient(this.image, this.positions, this.tapped);
  final String image;
  final List<Offset> positions;
  bool tapped;
}

var ingredients = <Ingredient>[
  Ingredient(
    'assets/topping/onion.png',
    <Offset>[
      Offset(0.8, 0.15),
      Offset(0.6, 0.45),
      Offset(0.7, 0.2),
      Offset(0.8, 0.55),
    ],
    false,
  ),
  Ingredient(
    'assets/topping/olives.png',
    <Offset>[
      Offset(0.6, 0.2),
      Offset(0.5, 0.4),
      Offset(0.7, 0.25),
      Offset(0.9, 0.50),
    ],
    false,
  ),
  Ingredient(
    'assets/topping/cheese.png',
    <Offset>[
      Offset(0.4, 0.3),
      Offset(0.6, 0.65),
      Offset(0.7, 0.15),
      Offset(0.9, 0.55),
    ],
    false,
  ),
  Ingredient(
    'assets/topping/mushrooms.png',
    <Offset>[
      Offset(0.8, 0.15),
      Offset(0.6, 0.45),
      Offset(0.7, 0.2),
      Offset(0.8, 0.55),
    ],
    false,
  ),
  Ingredient(
    'assets/topping/tomatos.png',
    <Offset>[
      Offset(0.6, 0.2),
      Offset(0.5, 0.4),
      Offset(0.7, 0.25),
      Offset(0.9, 0.50),
    ],
    false,
  ),
  Ingredient(
    'assets/topping/oregano.png',
    <Offset>[
      Offset(0.8, 0.15),
      Offset(0.6, 0.45),
      Offset(0.7, 0.2),
      Offset(0.8, 0.55),
    ],
    false,
  ),
];
