import 'package:flutter/material.dart';
import '../screens/about_screen.dart';
import '../screens/projects_screen.dart';
import '../screens/skills_screen.dart';
import '../screens/contact_screen.dart';
import '../utils/page_route.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  void navigate(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      SmoothPageRoute(page: screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
        decoration: BoxDecoration(
        color: Colors.white,
  ),
        accountName: Text(
        "Atharv Singh Raghuvanshi",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
  ),
       accountEmail: Text(
        "atharvwork.ext@gmail.com",
          style: TextStyle(color: Colors.black87),
  ),
  currentAccountPicture: CircleAvatar(
    backgroundImage: AssetImage("assets/images/profile.jpeg"),
  ),
),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("About"),
            onTap: () => navigate(context, const AboutScreen()),
          ),
          ListTile(
            leading: const Icon(Icons.code),
            title: const Text("Projects"),
            onTap: () => navigate(context, const ProjectsScreen()),
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text("Skills"),
            onTap: () => navigate(context, const SkillsScreen()),
          ),
          ListTile(
            leading: const Icon(Icons.contact_mail),
            title: const Text("Contact"),
            onTap: () => navigate(context, const ContactScreen()),
          ),
        ],
      ),
    );
  }
}