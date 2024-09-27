import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({super.key});

  List<String> myTitleCategory = [
    'Iphone',
    'Skincare',
    'Meja',
    'Baju'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < myTitleCategory.length; i++)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'images/${i + 1}.jpeg',
                    width: 40,
                    height: 40,
                  ),
                  Text(
                    myTitleCategory[i],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Color.fromARGB(255, 63, 203, 221)),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}