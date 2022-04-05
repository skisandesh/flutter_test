import 'package:flutter/material.dart';
import 'package:flutter_project/constants.dart';
import 'package:flutter_project/dummy_data.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = allProducts.first;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text(
              product.name,style: titleText,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.favorite_outline,color: Colors.red,)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart_outlined)),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text('Description',style: subtitleText,),
        const SizedBox(height: 20),
         Text(product.description),
        const SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 5),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              
              product.isVegan?const Text('Vegan'):const Text('Non-Vegan'),
              const SizedBox(width: 15),
              Row(
                children: [
                  Icon(Icons.access_time_sharp,size: 20,color: Colors.red,),
                  Text(product.duration.toString()+' min',),
                ],
              
              )
            ]),
          ),
        )
      ],
    );
  }
}