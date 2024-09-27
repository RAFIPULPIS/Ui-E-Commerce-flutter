import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color.fromARGB(255, 76, 165, 88),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'SAMLING',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 64, 219, 212),
              ),
              ),
           ),
          const Spacer(),
          badges.Badge(
            badgeStyle: const badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(7),
            ),
            badgeContent: const Text(
              '3',
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/chatpage");
              },
              child: const Icon(
                Icons.message,
                size: 32,
                color: Color.fromARGB(255, 63, 203, 221),
              ),
            ),
          ),
        ],
      ),
    );
  }
}