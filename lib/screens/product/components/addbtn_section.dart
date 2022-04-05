import 'package:flutter/material.dart';
import 'package:flutter_project/constants.dart';

class CartBtnSection extends StatefulWidget {
  const CartBtnSection({Key? key}) : super(key: key);

  @override
  State<CartBtnSection> createState() => _CartBtnSectionState();
}

class _CartBtnSectionState extends State<CartBtnSection> {
  @override
  Widget build(BuildContext context) {
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
            child: Text('Rs. 20000', style: whiteText,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: const EdgeInsets.all(0),
              padding: const EdgeInsets.symmetric(horizontal:15),
              decoration: BoxDecoration(
             border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(60),
  ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                IconButton(
                  icon: Icon(Icons.remove,color: white,),
                  onPressed: () {},
                ),
                Text('1',style: whiteText,),
                IconButton(
                  icon: Icon(Icons.add,color: white,),
                  onPressed: () {},
                ),
              ]),
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all<CircleBorder>(
                  CircleBorder(side: BorderSide(color: Colors.green))),
            ),
            child: Icon(Icons.shopping_basket,color: black,),
          ),
        ],
      ),
    );
  }
}
