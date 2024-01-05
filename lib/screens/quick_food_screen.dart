import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_example/models/food.dart';
import 'package:food_example/widgets/food_card.dart';
import 'package:food_example/widgets/quick_screen_appbar.dart';
import 'package:iconsax/iconsax.dart';

class QuickFoodScreen extends StatefulWidget {
  const QuickFoodScreen({super.key});

  @override
  State<QuickFoodScreen> createState() => _QuickFoodScreenState();
}

class _QuickFoodScreenState extends State<QuickFoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const QuickScreenAppBar(),
                const SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        ),
                    itemBuilder: (context, index) =>FoodCard(food: foods[index],) ,
                    itemCount: foods.length,
                    )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
