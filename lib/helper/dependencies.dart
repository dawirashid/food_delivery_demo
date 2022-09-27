import 'package:food_delivery_demo/controller/popular_product_controller.dart';
import 'package:food_delivery_demo/data/api/api_client.dart';
import 'package:food_delivery_demo/data/repository/popular_product_repo.dart';
import 'package:food_delivery_demo/utilis/app_constants.dart';
import 'package:get/get.dart';
import '../controller/recommended_product_controller.dart';
import '../data/repository/recommended_product_repo.dart';

Future<void> init() async {
  // api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo: Get.find()));
}
