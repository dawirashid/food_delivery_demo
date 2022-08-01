import 'package:flutter/material.dart';
import 'package:food_delivery_demo/utilis/colors.dart';
import 'package:food_delivery_demo/utilis/dimensions.dart';
import 'package:food_delivery_demo/widgets/app_column.dart';
import 'package:food_delivery_demo/widgets/app_icon.dart';
import 'package:food_delivery_demo/widgets/big_text.dart';

import '../../widgets/expandable_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImageSize,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/image/food0.png'),
                ),
              ),
            ),
          ),
          // icon widget
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          // introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImageSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(
                    text: 'Chinese Side',
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  BigText(text: 'Introduce'),
                  Expanded(
                    child: SingleChildScrollView(
                        child: ExpandableTextWidget(
                            text:
                                'The Delhi version of biryani developed a unique local flavor as the Mughal kings shifted their political capital to the North Indian city of Delhi. Until the 1950s, most people cooked biryani in their home and rarely ate at eateries outside of their homes. Hence, restaurants primarily catered to travelers and merchants. Any region that saw more of these two classes of people nurtured more restaurants, and thus their own versions of biryani. This is the reason why most shops that sold biryani in Delhi, tended to be near mosques such as Jama Masjid (for travellers) or traditional shopping districts (such as Chandni Chowk)Each part of Delhi has its own style of biryani, often based on its original purpose, thus giving rise to Nizamuddin biryani, Shahjahanabad biryani, etc. Nizamuddin biryani usually had little expensive meat and spices as it was primarily meant to be made in bulk for offering at the Nizamuddin Dargah shrine and thereafter to be distributed to devotees.[21] A non-dum biryani, using many green chillies, popularized by the Babu Shahi Bawarchi shops located outside the National Sports Club in Delhi is informally called Babu Shahi biryani. Another version of Delhi biryani uses achaar (pickles) and is called achaari biryani'),),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.blue,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(text: '0'),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  const Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor,
                ),
                child: BigText(
                  text: '\$10 | Add to cart',
                )),
          ],
        ),
      ),
    );
  }
}
