import 'package:flutter/material.dart';
import 'package:travjo_web/components/nav_bar_button.dart';
import 'package:travjo_web/constants/colors.dart';
import 'package:travjo_web/utils/redirect.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: splashColorBG,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'images/logo-white.png',
                  color: primaryColor,
                  height: 50,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  '''
We are a TravelTech company that aspires at
making tourism smooth, safe and organized by
eradicating middlemen and scammers through
excellent technology innovation.
''',
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text('CONTACT'),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.phone,
                      color: primaryColor,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '+91 (9170717780)',
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.mail, color: primaryColor),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'contact@travjo.com',
                    )
                  ],
                )
              ],
            ),
            Column(
              children: const [],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'COMPANY',
                ),
                const SizedBox(
                  height: 24,
                ),
                NavBarButtonSimple(onPressed: () {}, label: 'Home'),
                const SizedBox(
                  height: 8,
                ),
                NavBarButtonSimple(onPressed: () {}, label: 'About Us'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'SOCIAL',
                ),
                const SizedBox(
                  height: 24,
                ),
                NavBarButtonSimple(
                    onPressed: () => WebRedirect.launchInBrowser(
                        'https://www.facebook.com/itstravjo'),
                    label: 'Facebook'),
                const SizedBox(
                  height: 8,
                ),
                NavBarButtonSimple(
                    onPressed: () => WebRedirect.launchInBrowser(
                        'https://twitter.com/Travjoofficial?t=7ZSoxvRmeRQ4ho-gsupdog&s=08'),
                    label: 'Twitter'),
                const SizedBox(
                  height: 8,
                ),
                NavBarButtonSimple(
                    onPressed: () => WebRedirect.launchInBrowser(
                        'https://instagram.com/travjoofficial?igshid=YmMyMTA2M2Y='),
                    label: 'Instagram'),
                const SizedBox(
                  height: 8,
                ),
                NavBarButtonSimple(
                    onPressed: () => WebRedirect.launchInBrowser(
                        'https://www.linkedin.com/company/travjo/'),
                    label: 'LinkedIn'),
                const SizedBox(
                  height: 8,
                ),
                NavBarButtonSimple(
                    onPressed: () => WebRedirect.launchInBrowser(
                        'https://youtube.com/channel/UCCtqjU1Utd4VbJUHPTVp32Q'),
                    label: 'YouTube'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
