import 'package:flutter/material.dart';
import 'package:flutter_project/constants.dart';
import 'package:flutter_project/models/addon.dart';
import 'package:flutter_project/models/product.dart';
import 'package:flutter_project/providers/cart_provider.dart';
import 'package:flutter_project/providers/product_provider.dart';
import 'package:provider/provider.dart';

class CartBtnSection extends StatefulWidget {
  const CartBtnSection({Key? key}) : super(key: key);

  @override
  State<CartBtnSection> createState() => _CartBtnSectionState();
}

class _CartBtnSectionState extends State<CartBtnSection> {
  int quantity = 1;
  void addQuantity() {
    setState(() {
      quantity++;
    });
  }

  void subtractQuantity() {
    setState(() {
      if (quantity > 1) {
        quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<ProductProvider>(context).getProduct();
    final cart = Provider.of<CartProvider>(context);
    double price = Provider.of<ProductProvider>(context).price;
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(244, 255, 42, 22),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Rs. ${price * quantity}',
              style: whiteText,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: const EdgeInsets.all(0),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(60),
              ),
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                IconButton(
                  icon: const Icon(
                    Icons.remove,
                    color: white,
                  ),
                  onPressed: subtractQuantity,
                ),
                Text(
                  '$quantity',
                  style: whiteText,
                ),
                IconButton(
                  icon: const Icon(
                    Icons.add,
                    color: white,
                  ),
                  onPressed: addQuantity,
                ),
              ]),
            ),
          ),
          OutlinedButton(
            onPressed: (() => cart.addItem(
                product.id, price*quantity, product.name, product.id, quantity)),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all<CircleBorder>(
                  const CircleBorder(side: BorderSide(color: Colors.green))),
            ),
            child: const Icon(
              Icons.shopping_basket,
              color: black,
            ),
          ),
        ],
      ),
    );
  }
}
