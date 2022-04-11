import 'package:flutter/material.dart';
import 'package:flutter_project/screens/product/components/addbtn_section.dart';
import 'package:flutter_project/screens/product/components/addon_section.dart';
import 'package:flutter_project/screens/product/components/description_section.dart';
import 'package:flutter_project/screens/product/components/ingredient_section.dart';
import 'package:flutter_project/screens/product/components/nutrition_info_section.dart';
import 'package:flutter_project/screens/product/components/top_section.dart';

class ProductBody extends StatefulWidget {
  const ProductBody({Key? key}) : super(key: key);

  @override
  State<ProductBody> createState() => _ProductBodyState();
}

class _ProductBodyState extends State<ProductBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              const TopSection(),
            
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    DescriptionSection(),
                    NutritionInfoSection(),
                    IngredientSection(),
                    AddOnSection(),
                    SizedBox(height: 70,)
            
                  ],
                ),
              ),
              
              
            ],
          ),
        ),
                  const Positioned(
                    bottom: 0,
                    child: CartBtnSection()),

      ],
    );
  }
}






