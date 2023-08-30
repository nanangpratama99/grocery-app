import 'package:flutter/material.dart';
import 'package:grocery_app/pages/home/components/grocery_item_tile.dart';
import 'package:provider/provider.dart';

import '../../../model/cart_model.dart';

class GridItems extends StatelessWidget {
  const GridItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<CartModel>(
        builder: (context, value, child) {
          return GridView.builder(
            itemCount: value.shopItems.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1 / 1.3),
            itemBuilder: (context, index) {
              return BuildGroceryItemTile(
                itemName: value.shopItems[index][0],
                itemPrice: value.shopItems[index][1],
                imagePath: value.shopItems[index][2],
                color: value.shopItems[index][3],
                onPressed: () {
                  Provider.of<CartModel>(context, listen: false)
                      .addItemToCart(index);
                },
              );
            },
          );
        },
      ),
    );
  }
}
