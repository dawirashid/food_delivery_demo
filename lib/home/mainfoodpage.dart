import 'package:flutter/material.dart';
import 'package:food_delivery_demo/utilis/colors.dart';
import 'package:food_delivery_demo/widgets/big_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 45, bottom: 15, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children:  [
                    BigText(text: 'Selangor',color: AppColors.mainColor,),
                    const Text('City'),
                  ],
                ),
                Center(
                  child: Container(
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
