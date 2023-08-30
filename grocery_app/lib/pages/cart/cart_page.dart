import 'package:flutter/material.dart';
import 'package:grocery_app/pages/cart/components/body.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade600,
        elevation: 0,
        title: const Text("Cart Page"),
      ),
      body: const Body(),
    );
  }
}
