import 'package:flutter/material.dart';
import 'grid_items.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            // greeting
            Text("Good Morning"),
            SizedBox(height: 10),

            // Let's order fresh item
            Text(
              "Let's Order Fresh Item For You",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
            ),

            // divider
            Divider(),
            SizedBox(height: 24),

            // fresh item + grid
            Text(
              "Fresh Item",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),

            // < ----------- Grid View Item ------------>
            GridItems(),
          ],
        ),
      ),
    );
  }
}
