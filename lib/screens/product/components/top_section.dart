import 'package:flutter/material.dart';
import 'package:flutter_project/constants.dart';
import 'package:flutter_project/dummy_data.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var safePadding = MediaQuery.of(context).padding.top;
    final size = MediaQuery.of(context).size;
    final product = allProducts.first;
    return Stack(
      children: [
        Image.asset(
          product.image,
          height: size.height * 0.3,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
            top: safePadding,
            child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(Icons.arrow_back,size: 20,))),
        Positioned(
          top: safePadding,
          right: 10,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.black54),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical:6.0,horizontal: 12),
              child: Row(children: [
                Text(
                  product.rating.toString(),
                  style:const  TextStyle(
                      color: white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 15,
                ),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}