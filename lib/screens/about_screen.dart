import 'package:flutter/material.dart';
import '../widgets/education_timeline.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Me")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.indigo, Colors.blue],
                ),
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Text(
                "I am Atharv Singh Raghuvanshi, a B.Tech CSE Core student at VIT Bhopal University. I focus on Flutter development, AI/ML, and building real-world applications.\n\nI enjoy solving problems, building scalable systems, and continuously learning new technologies.",
                style: TextStyle(color: Colors.white, fontSize: 16, height: 1.5),
              ),
            ),
            const SizedBox(height: 20),
            const EducationTimeline(),
          ],
        ),
      ),
    );
  }
}