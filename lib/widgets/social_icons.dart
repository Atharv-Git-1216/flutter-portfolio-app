import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcons extends StatefulWidget {
  const SocialIcons({super.key});

  @override
  State<SocialIcons> createState() => _SocialIconsState();
}

class _SocialIconsState extends State<SocialIcons> with SingleTickerProviderStateMixin {
  late AnimationController controller;

  final Map<IconData, String> links = {
    FontAwesomeIcons.instagram: "https://www.instagram.com/_______atharv______?igsh=bHI0NTE0MmcwbWd0",
    FontAwesomeIcons.linkedin: "https://www.linkedin.com/in/atharv-singh-raghuvanshi-413aa73ba?utm_source=share_via&utm_content=profile&utm_medium=member_android",
    FontAwesomeIcons.facebook: "https://www.facebook.com/share/187h9u78xw/",
    FontAwesomeIcons.telegram: "t.me/Atharv1216",
    FontAwesomeIcons.youtube: "https://www.youtube.com/@atharv9273",
    FontAwesomeIcons.pinterest: "https://pin.it/5z2wkaJ9V",
    FontAwesomeIcons.discord: "https://discord.com/users/atharvsynopsis",
  };

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..forward();
  }

  Future<void> openLink(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  Widget icon(IconData icon, int index) {
    return ScaleTransition(
      scale: CurvedAnimation(
        parent: controller,
        curve: Interval(index * 0.1, 1, curve: Curves.easeOut),
      ),
      child: IconButton(
        onPressed: () => openLink(links[icon]!),
        icon: FaIcon(icon, size: 28),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      alignment: WrapAlignment.center,
      children: [
        icon(FontAwesomeIcons.instagram, 1),
        icon(FontAwesomeIcons.linkedin, 2),
        icon(FontAwesomeIcons.facebook, 3),
        icon(FontAwesomeIcons.telegram, 4),
        icon(FontAwesomeIcons.youtube, 5),
        icon(FontAwesomeIcons.pinterest, 7),
        icon(FontAwesomeIcons.discord, 8),
      ],
    );
  }
}