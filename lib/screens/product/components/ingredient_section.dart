import 'package:flutter/material.dart';
import 'package:flutter_project/constants.dart';
import 'package:flutter_project/dummy_data.dart';


class IngredientSection extends StatelessWidget {
  const IngredientSection({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final ingredients = allProducts.first.ingredients;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text('Ingredients',style: subtitleText,),
      SizedBox(height: 20,),
      Container(
        height: 85,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: ingredients.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(ingredients[index].image,width:25,height:25,),
                    SizedBox(height: 5,),
                    Text(ingredients[index].name),
                  ],
                ),
              ),
            );
          },
        ),
      ),
        const SizedBox(height:20),

    ]);
  }
}
