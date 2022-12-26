import 'package:url_launcher/url_launcher.dart';

class WebRedirect {
  static Future<void> launchInBrowser(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }
}
