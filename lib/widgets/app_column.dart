import 'package:flutter/material.dart';
import 'package:food_delivery_demo/widgets/small_text.dart';
import '../utilis/colors.dart';
import '../utilis/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {

  final String text;

  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text),
        SizedBox(height: Dimensions.height10),
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
        SizedBox(
          height: Dimensions.height20,
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
        ),
      ],
    );
  }
}
