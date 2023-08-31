import 'package:flutter/material.dart';
import 'package:grocery_app/pages/cart/components/body.dart';

import '../../widgets/back_button.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Back(),
      ),
      body: const Body(),
    );
  }
}
