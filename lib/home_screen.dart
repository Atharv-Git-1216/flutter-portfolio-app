import 'dart:ui';
import 'package:flutter/material.dart';
import 'widgets/drawer_widget.dart';
import 'widgets/slider_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  Widget glassCard(String title, String content) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: Colors.white.withOpacity(0.1)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              const SizedBox(height: 8),
              Text(content, style: const TextStyle(color: Colors.white70)),
            ],
          ),
        ),
      ),
    );
  }

  Widget profileHeader() {
    return TweenAnimationBuilder(
      duration: const Duration(milliseconds: 800),
      tween: Tween<double>(begin: 0, end: 1),
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(0, 40 * (1 - value)),
          child: Opacity(opacity: value, child: child),
        );
      },
      child: Column(
        children: const [
          CircleAvatar(
            radius: 45,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 42,
              backgroundImage: AssetImage("assets/images/profile.jpeg"),
            ),
          ),
          SizedBox(height: 12),
          Text(
            "Atharv Singh Raghuvanshi",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 249, 248, 248)),
          ),
          SizedBox(height: 4),
          Text(
            "CSE Core • Flutter Developer • AI/ML Enthusiast",
            style: TextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }

  Widget homeTab() {
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
      children: [
        profileHeader(),
        const SizedBox(height: 30),
        const SliderWidget(),
        const SizedBox(height: 30),
        glassCard(
          "About",
          "Passionate about Flutter and AI/ML, focused on building scalable and real-world impactful applications.",
        ),
        glassCard(
          "Projects",
          "Student Predictor, Currency Converter, Portfolio App, AI-based systems, Xsta App, Income Engine website, One Tap Study App, Weather App.",
        ),
        glassCard(
          "Skills",
          "Flutter, Dart, Python, C++, Machine Learning, Web Development.",
        ),
      ],
    );
  }

  Widget exploreTab() {
    return const Center(
      child: Text(
        "More features coming soon...",
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }

  Widget contactTab() {
    return const Center(
      child: Text(
        "Check Contact section from Drawer",
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final pages = [homeTab(), exploreTab(), contactTab()];

    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D),
      drawer: const DrawerWidget(),
      appBar: AppBar(
  title: const Text(
    "Atharv's Portfolio",
    style: TextStyle(color: Colors.white),
  ),
  centerTitle: true,
  backgroundColor: Colors.black,
  elevation: 0,
  foregroundColor: Colors.white,
  iconTheme: const IconThemeData(color: Colors.white),
  titleTextStyle: const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  ),
),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 1, 1, 1),
        currentIndex: currentIndex,
        onTap: (i) => setState(() => currentIndex = i),
        selectedItemColor: const Color.fromARGB(255, 250, 249, 249),
        unselectedItemColor: const Color.fromARGB(228, 60, 97, 169),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: "Contact"),
        ],
      ),
    );
  }
}