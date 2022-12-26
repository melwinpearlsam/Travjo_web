import 'package:flutter/material.dart';
import 'package:travjo_web/components/nav_bar_button.dart';
import 'package:travjo_web/constants/colors.dart';
import 'package:travjo_web/constants/number_constants.dart';
import 'package:travjo_web/constants/style_constants.dart';

class HomeSplash extends StatelessWidget {
  const HomeSplash({Key? key}) : super(key: key);

  final TextStyle splashTextStyle =
      const TextStyle(fontSize: 30, fontWeight: FontWeight.w700);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 400,
          width: sysWidth,
          child: Image.asset(
            'images/splash.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            left: 50,
            top: 50,
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(TextSpan(children: [
                    TextSpan(text: 'Why to fear\n', style: splashTextStyle),
                    TextSpan(
                        text: 'Travjo ',
                        style: splashTextStyle.copyWith(color: primaryColor)),
                    TextSpan(text: 'is here!', style: splashTextStyle)
                  ])),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('''
We at Travjo, help tourists and
travellers to get an ease in their
journey and enjoy it to the fullest
with full hindrances and backlogs.
'''),
                  const SizedBox(
                    height: 12,
                  ),
                  NavBarButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {},
                    label: 'Sign Up',
                    buttonStyle: buttonStyleNavBar2,
                  )
                ],
              ),
            )),
      ],
    );
  }
}
