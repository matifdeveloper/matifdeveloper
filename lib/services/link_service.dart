import 'package:url_launcher/url_launcher.dart';

class LinkService{
  static Future<void> openLink(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}