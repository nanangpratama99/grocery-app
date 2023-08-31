import 'package:flutter/material.dart';
import 'package:grocery_app/pages/home/components/category_item.dart';
import 'grid_items.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            // greeting
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_pin,
                      color: Colors.grey.shade400,
                    ),
                    Text(
                      "Jakarta, Indonesia",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.jpeg'),
                )
              ],
            ),
            const SizedBox(height: 10),

            // Let's order fresh item
            const Text(
              "Let's Order Fresh Item For You",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
            ),

            // divider
            const Divider(),
            const SizedBox(height: 24),

            // fresh item + grid
            const Text("Category", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10),

            // category item
            const CategoryItem(),

            const SizedBox(height: 10),
            // < ----------- Grid View Item ------------>
            const Text("Fresh Item", style: TextStyle(fontSize: 20)),
            const GridItems(),
          ],
        ),
      ),
    );
  }
}
