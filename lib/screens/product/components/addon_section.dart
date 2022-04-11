import 'package:flutter/material.dart';
import 'package:flutter_project/constants.dart';
import 'package:flutter_project/dummy_data.dart';
import 'package:flutter_project/providers/product_provider.dart';
import 'package:provider/provider.dart';



class AddOnSection extends StatefulWidget {
  const AddOnSection({Key? key}) : super(key: key);

  @override
  State<AddOnSection> createState() => _AddOnSectionState();
}

class _AddOnSectionState extends State<AddOnSection> {
  String? _seleted = '';
  @override
  Widget build(BuildContext context) {
    final addOns = Provider.of<ProductProvider>(context).getProduct().addOns;
    double productPrice = Provider.of<ProductProvider>(context).getProduct().price;
    var product = context.read<ProductProvider>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Choice of Add On',style: subtitleText,),
        ListView.builder(
            itemCount: addOns!.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.asset(addOns[index].img, width: 30, height: 30),
                title: Text(addOns[index].name),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('\$${addOns[index].price}'),
                    Radio<String>(
                      activeColor: Color.fromARGB(255, 250, 93, 2),
                        value: addOns[index].name.toString(),
                        groupValue: _seleted,
                        onChanged: (value) {
                          setState(() {
                            _seleted = value;
                            product.addPrice(addOns[index].price);
                          });
                        })
                  ],
                ),

              );
            }),
      ],
    );
  }
}
