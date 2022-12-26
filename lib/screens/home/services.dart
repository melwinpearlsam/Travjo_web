import 'package:flutter/material.dart';
import 'package:travjo_web/constants/colors.dart';

class HomeOurServices extends StatelessWidget {
  const HomeOurServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Our Services',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 28,
            ),
            const Text(
              'We are one pack',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              '''
A unified platform for your worry-free travel, hassle free
enjoyments without any scammers, imposters or any other
obstacles in India''',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            Wrap(
              alignment: WrapAlignment.spaceEvenly,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: const [
                Servicecard(
                  image: 'images/services/1.png',
                  text: '''
Travjo Secure:
Guaranteed help
within 20 mins''',
                ),
                Servicecard(
                  image: 'images/services/2.png',
                  text: '''
Checked tourist
services for medical
and safety''',
                ),
                Servicecard(
                  image: 'images/services/3.png',
                  text: '''
Hassle free payment
options to vendors
and merchants''',
                ),
                Servicecard(
                  image: 'images/services/4.png',
                  text: '''
Authenticated and
proximity based
vendors''',
                )
              ],
            )
          ],
        ));
  }
}

class Servicecard extends StatelessWidget {
  final String image;
  final String text;
  final double? imageHeight;
  final double? textSize;
  const Servicecard(
      {Key? key,
      required this.image,
      required this.text,
      this.imageHeight,
      this.textSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: const BorderSide(color: primaryColor, width: 1)),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: imageHeight ?? 30,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: textSize ?? 12,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
