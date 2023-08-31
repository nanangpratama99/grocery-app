import 'package:flutter/material.dart';

import '../../../model/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryModelItem.length,
        itemBuilder: (context, index) {
          return Container(
            width: 200,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                color: categoryModelItem[index].color,
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Image.asset(
                  categoryModelItem[index].imagePath,
                  width: 80,
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      categoryModelItem[index].categoryName,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
