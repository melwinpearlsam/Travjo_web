import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:travjo_web/components/nav_bar_button.dart';
import 'package:travjo_web/constants/colors.dart';
import 'package:travjo_web/constants/style_constants.dart';

class HomeDidYouKnow extends StatelessWidget {
  const HomeDidYouKnow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Did you know?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 40,
            ),
            DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(16),
              padding: const EdgeInsets.all(16),
              color: primaryColor,
              child: SizedBox(
                child: Column(
                  children: [
                    const Text.rich(
                      TextSpan(children: [
                        TextSpan(text: 'In a survey conducted,\n\n'),
                        TextSpan(text: 'Approximtely'),
                        TextSpan(
                            text: ' 39%',
                            style: TextStyle(color: primaryColor)),
                        TextSpan(
                            text:
                                ' of the tourists complained about being cheated,'),
                        TextSpan(
                            text: ' 21%',
                            style: TextStyle(color: primaryColor)),
                        TextSpan(text: ' of people\nreported theft and'),
                        TextSpan(
                            text: ' 17%',
                            style: TextStyle(color: primaryColor)),
                        TextSpan(
                            text:
                                ' faced threaths. Shockingly, a list of 650 tourists tagged fatal\ncrimes and harrassment they experienced in their journey.\n'),
                        TextSpan(text: 'That’s where we come in,'),
                        TextSpan(
                            text: ' Travjo',
                            style: TextStyle(color: primaryColor)),
                        TextSpan(
                            text:
                                ' helps tourists and travellers by helping them locate\nverified shops, shops, restaurants and tour guides. These verified tour guides help\nyou travel safely with all the safety measures and emergency services. So let’s get\nstarted.')
                      ]),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    NavBarButton(
                      onPressed: () {},
                      label: 'Get Started',
                      buttonStyle: buttonStyleNavBar2,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ));
  }
}
