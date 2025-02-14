import 'package:flutter/material.dart';
import 'package:todo_app/constant/colors.dart';
import 'package:todo_app/screens/family_members_screen.dart';
import 'package:todo_app/screens/numbers_screen.dart';
import 'package:todo_app/widgets/category.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(prownColor),
        title: const Text('Toku App', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const NumbersScreen(),
              ));
            },
            title: 'Numbers',
            color: orangeColor,
          ),
          Category(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const FamilyMembersScreen(),
              ));
            },
            title: 'Family Members',
            color: greenColor,
          ),
        ],
      ),
    );
  }
}
