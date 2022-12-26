import 'package:get/get.dart';
import 'package:travjo_web/controller/route_controller.dart';

class Appbinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RouteController>(() => RouteController(), fenix: false);
  }
}
