import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_project/constants.dart';
import 'package:flutter_project/dummy_data.dart';
import 'package:flutter_project/models/nutrition.dart';
import 'package:flutter_project/providers/product_provider.dart';
import 'package:provider/provider.dart';



class NutritionInfoSection extends StatefulWidget {
  const NutritionInfoSection({Key? key}) : super(key: key);

  @override
  State<NutritionInfoSection> createState() => _NutritionInfoSectionState();
}

class _NutritionInfoSectionState extends State<NutritionInfoSection> {
  @override
  Widget build(BuildContext context) {
    final product =  Provider.of<ProductProvider>(context).getProduct();

    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 25),
        const Text(
          'Nutritional Info',
          style: subtitleText,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text('${product.calories} cal'),
                  SizedBox(
                      width: 100,
                      height: 150,
                      child: _pieChart(product.nutrition)),
                ],
              ),
            ),
            SizedBox(width: size.width * 0.25),
            Expanded(child: nutritionList(product.nutrition)),
          ],
        ),
      ],
    );
  }

  Widget _pieChart(List<Nutrition> data) {
    return PieChart(
      PieChartData(
        sections: data
            .map(
              (e) => PieChartSectionData(
                color: e.color,
                value: e.value,
                radius: 10.0,
                title: '',
              ),
            )
            .toList(),
        sectionsSpace: 0,
        centerSpaceRadius: 50,
      ),
    );
  }

  ListView nutritionList(List<Nutrition> data) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: ((context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Row(
              children: [
                Container(
                  height: 6,
                  width: 25,
                  decoration: BoxDecoration(
                    color: data[index].color,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text('${(data[index].value).toStringAsFixed(0)}g'),
                const SizedBox(
                  width: 5,
                ),
                Text(data[index].name),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
          )),
      itemCount: data.length,
    );
  }
}
