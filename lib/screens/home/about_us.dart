import 'package:flutter/material.dart';
import 'package:travjo_web/components/youtube_control.dart';
import 'package:travjo_web/constants/colors.dart';
import 'package:travjo_web/constants/number_constants.dart';

class HomeAboutUs extends StatelessWidget {
  const HomeAboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sysWidth,
      color: splashColorBG,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 32),
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'images/about/about_header.png',
                      height: 60,
                    ),
                    const Positioned(
                        top: 30,
                        left: 20,
                        child: Text(
                          'About Us',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 28,
                ),
                const Text('''
Travelling is just not a mere activity but a camera that makes and
keeps the memory unfaded last forever. The world is full of wonders
and beauties and we hold once in a lifetime opportunity to explore
and experience its magnifience and capture its glory to keep with us
forever because travelling leaves you sppechless and then turns you
into a storyteller.'''),
                const SizedBox(
                  height: 20,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_right_alt,
                      color: primaryColor,
                    ),
                    label: const Text(
                      'Know More',
                      style: TextStyle(color: primaryColor),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(16)),
                  height: 220,
                  width: 350,
                  child: const YoutubePlayerWidget()),
            )
          ],
        ),
      ),
    );
  }
}
