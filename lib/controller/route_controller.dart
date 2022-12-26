import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:travjo_web/screens/home/about_us.dart';
import 'package:travjo_web/screens/home/benifits.dart';
import 'package:travjo_web/screens/home/choose_us.dart';
import 'package:travjo_web/screens/home/did_you_know.dart';
import 'package:travjo_web/screens/home/footer.dart';
import 'package:travjo_web/screens/home/our_team.dart';
import 'package:travjo_web/screens/home/services.dart';
import 'package:travjo_web/screens/home/splash.dart';

class RouteController extends GetxController {
  List screens = const [
    HomeSplash(),
    HomeOurServices(),
    HomeAboutUs(),
    HomeChooseUs(),
    HomeBenifits(),
    HomeDidYouKnow(),
    HomeMyTeam(),
    FooterWidget()
  ];
  int routeIndex = 1;
  final scrollController = ItemScrollController();

  void animateTo(int index) {
    scrollController.scrollTo(
        index: index, duration: const Duration(milliseconds: 500));
  }
}
