import 'package:flutter_project/models/ingredient.dart';
import 'package:flutter_project/models/nutrition.dart';
import 'package:flutter_project/models/product.dart';
import 'package:flutter_project/models/addon.dart';
import 'package:flutter/material.dart';

List<Product> allProducts = [
  Product(
    id: '1',
    description:'our Fried Momo is Made from the finest ingredients and veggies. Single Dish is Made with Fresh Vegen',
    name: 'Eybisi Salad Mix',
    image: 'assets/images/salad.png',
    price: 12.99,
    quantity: 1,
    rating: 4.5,
    duration: 30,
    isVegan: true,
    addOns: [
      AddOn(
        id: '1',
        name: 'Pepper Julienned',
        price: 2.3,
        img: 'assets/images/pepper_julienned.png',
      ),
      AddOn(
        id: '2',
        name: 'Baby Spinach',
        price: 4.7,
        img: 'assets/images/baby_spinach.png',
      ),
      
    ],
    nutrition: [
      Nutrition(
        id: '1',
        name: 'Protein',
        value: 18,
        color: Colors.amber,
      ),
      Nutrition(
        id: '2',
        name: 'Fat',
        value: 18,
        color: Colors.red,
      ),
      Nutrition(
        id: '3',
        name: 'Carbs',
        value: 21,
        color: Colors.green
      ),
      Nutrition(
        id: '4',
        name: 'Fibre',
        value: 32,
        color: Colors.blue
      ),
    ],
    ingredients: [
      Ingredients(
        id: '1',
        name: 'chicken',
        image: 'assets/images/chicken.png',
      ),
      Ingredients(
        id: '2',
        name: 'Lettuce',
        image: 'assets/images/lettuce.png',
      ),
      Ingredients(
        id: '3',
        name: 'Olive oil',
        image: 'assets/images/olive_oil.png',
      ),
      Ingredients(
        id: '4',
        name: 'Egg',
        image: 'assets/images/egg.png',
      ), 
      Ingredients(
        id: '5',
        name: 'Tomato',
        image: 'assets/images/tomato.png',
      ),  
    ],
  ),
];
