import 'package:flutter/material.dart';
import 'package:travjo_web/constants/colors.dart';

class HomeChooseUs extends StatelessWidget {
  const HomeChooseUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Why Choose Us',
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
We understand your travel needs with 24/7 customer support.
We execute as per your needs and have an excellent track
record of happy customers.''',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    ChooseUsTile(
                      image: 'images/choose_us/1.png',
                      label: 'Travjo Secure: Guaranteed help within 20 mins',
                    ),
                    ChooseUsTile(
                      image: 'images/choose_us/2.png',
                      label: 'Emergency Services',
                    ),
                    ChooseUsTile(
                      image: 'images/choose_us/3.png',
                      label: 'Verified Vendors',
                    ),
                    ChooseUsTile(
                      image: 'images/choose_us/4.png',
                      label: 'Proximity based suggestions',
                    )
                  ],
                ),
                SizedBox(
                    width: 320,
                    child: Image.asset(
                      'images/choose_us/csplash.png',
                    ))
              ],
            )
          ],
        ));
  }
}

class ChooseUsTile extends StatelessWidget {
  final String image;
  final String label;
  const ChooseUsTile({
    required this.image,
    required this.label,
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            image,
            height: 30,
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            label,
            style: const TextStyle(color: primaryColor, fontSize: 16),
          )
        ],
      ),
    );
  }
}
