import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travjo_web/components/nav_bar_button.dart';
import 'package:travjo_web/controller/route_controller.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RouteController>(builder: (controller) {
      return LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 730) {
          return AppBar(
            elevation: 1,
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            leadingWidth: 40,
            title: Image.asset(
              'images/logo-white.png',
              color: const Color.fromARGB(255, 148, 26, 17),
              height: 40,
            ),
            actions: [
              NavBarButtonSimple(
                onPressed: () {},
                label: 'Search',
              ),
              NavBarButtonSimple(
                  onPressed: () => controller.animateTo(0), label: 'Home'),
              NavBarButtonSimple(
                  onPressed: () => controller.animateTo(1), label: 'About Us'),
              NavBarButtonSimple(onPressed: () {}, label: 'Treasure Hunt'),
              NavBarButtonSimple(
                  onPressed: () => controller.animateTo(5),
                  label: 'Contact Us'),
              NavBarButton(onPressed: () {}, label: 'Log In'),
              const SizedBox(
                width: 20,
              )
            ],
          );
        } else {
          return AppBar(
            elevation: 1,
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            leadingWidth: 40,
            title: Image.asset(
              'images/logo-white.png',
              color: const Color.fromARGB(255, 148, 26, 17),
              height: 40,
            ),
          );
        }
      });
    });
  }
}
