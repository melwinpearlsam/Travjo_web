import 'package:flutter/material.dart';
import 'package:travjo_web/constants/colors.dart';
import 'package:travjo_web/constants/number_constants.dart';

class HomeBenifits extends StatelessWidget {
  const HomeBenifits({Key? key}) : super(key: key);

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
                          'Benifits',
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
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: 220,
                width: 350,
                child: Stack(
                  children: [
                    Positioned(
                        top: 1,
                        right: 1,
                        child: Image.asset('images/benifits/benefit2.png',
                            height: 150)),
                    Positioned(
                        bottom: 1,
                        left: 1,
                        child: Image.asset(
                          'images/benifits/benefit1.png',
                          height: 150,
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
