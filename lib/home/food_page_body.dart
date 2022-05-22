import 'package:flutter/material.dart';
import 'package:food_delivery_demo/utilis/colors.dart';
import 'package:food_delivery_demo/widgets/big_text.dart';
import 'package:food_delivery_demo/widgets/icon_and_text_widget.dart';
import 'package:food_delivery_demo/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      // color: Colors.blue,
      height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? Colors.amber : Colors.blue,
            image: const DecorationImage(
              image: AssetImage(
                'assets/image/food0.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: 'Chinese Side'),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                          5,
                          (index) => const Icon(
                            Icons.star,
                            color: AppColors.mainColor,
                            size: 15,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SmallText(
                        text: '4.5',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SmallText(text: '121'),
                      const SizedBox(
                        width: 10,
                      ),
                      SmallText(text: 'comments'),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      IconAndTextWidget(
                          icon: Icons.circle_sharp,
                          text: 'Normal',
                          iconColor: AppColors.iconColor1),
                      IconAndTextWidget(
                          icon: Icons.location_on,
                          text: '1.2km',
                          iconColor: AppColors.mainColor),
                      IconAndTextWidget(
                          icon: Icons.access_time,
                          text: '32min',
                          iconColor: AppColors.iconColor2),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
