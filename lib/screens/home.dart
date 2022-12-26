import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:travjo_web/constants/number_constants.dart';
import 'package:travjo_web/controller/route_controller.dart';
import 'package:travjo_web/screens/home/nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: const TopNavBar(),
        preferredSize: Size(sysWidth, 50),
      ),
      body: GetBuilder<RouteController>(builder: (routeController) {
        return ScrollablePositionedList.builder(
          itemScrollController: routeController.scrollController,
          itemCount: routeController.screens.length,
          itemBuilder: (context, index) {
            return routeController.screens[index];
          },
        );
      }),
    );
  }
}
