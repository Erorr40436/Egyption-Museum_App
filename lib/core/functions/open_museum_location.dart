import 'package:url_launcher/url_launcher.dart';

Future<void> openMuseumLocation() async {
  final Uri url = Uri.parse('https://maps.app.goo.gl/P4MgwNxbXhmbe2FF8');

  await launchUrl(url, mode: LaunchMode.externalApplication);
}
