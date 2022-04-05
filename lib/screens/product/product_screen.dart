import 'package:flutter/material.dart';
import 'package:flutter_project/screens/product/components/product_body.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ProductBody(),
    );
  }
}