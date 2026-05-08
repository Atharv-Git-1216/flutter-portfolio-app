import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  Widget chip(String text) {
    return Chip(
      label: Text(text),
      backgroundColor: const Color.fromARGB(255, 2, 2, 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    final technical = [
      "Flutter",
      "Dart",
      "Python",
      "C++",
      "Machine Learning",
      "Data Structures",
      "OOP",
      "HTML",
      "CSS",
      "JavaScript",
      "Git & GitHub",
      "REST APIs"
    ];

    final soft = [
      "Problem Solving",
      "Communication",
      "Team Collaboration",
      "Adaptability",
      "Time Management",
      "Critical Thinking",
      "Quick Learning"
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Skills")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text("Technical Skills", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Wrap(spacing: 10, runSpacing: 10, children: technical.map(chip).toList()),
            const SizedBox(height: 20),
            const Text("Soft Skills", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Wrap(spacing: 10, runSpacing: 10, children: soft.map(chip).toList()),
          ],
        ),
      ),
    );
  }
}