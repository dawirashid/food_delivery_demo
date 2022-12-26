import 'package:flutter/material.dart';
import 'package:food_delivery_demo/controller/popular_product_controller.dart';
import 'package:food_delivery_demo/pages/cart/cart_page.dart';
import 'package:food_delivery_demo/pages/food/popular_food_details.dart';
import 'package:food_delivery_demo/pages/food/recommended_food_detail.dart';
import 'package:food_delivery_demo/pages/home/mainfoodpage.dart';
import 'package:food_delivery_demo/pages/splash/splash_page.dart';
import 'package:food_delivery_demo/routes/route_helper.dart';
import 'package:get/get.dart';
import 'controller/recommended_product_controller.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetBuilder<PopularProductController>(builder: (_){
      return GetBuilder<RecommendedProductController>(builder: (_){
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          // home: SplashScreen(),
          initialRoute: RouteHelper.getSplashPage(),
          getPages: RouteHelper.routes,
        );
      });
      
    });
  }
}
