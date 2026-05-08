import 'package:flutter/material.dart';
import '../widgets/social_icons.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contact")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Email: atharvwork.ext@gmail.com"),
          SizedBox(height: 20),
          SocialIcons()
        ],
      ),
    );
  }
}