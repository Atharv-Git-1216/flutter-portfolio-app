import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Upgraded from a List of Strings to a List of Maps to hold descriptions
    final List<Map<String, String>> projects = [
      {
        "title": "Xsta App",
        "description": "A cross-platform social networking application built using Flutter and Dart."
      },
      {
        "title": "Income Engine website",
        "description": "A finance tool built during the VibeHack hackathon utilizing a Python/Flask backend and Supabase."
      },
      {
        "title": "One Tap Study App",
        "description": "A productivity application designed to streamline learning and organize study sessions."
      },
      {
        "title": "Weather App",
        "description": "A real-time weather tracking application featuring seamless external API integration."
      },
      {
        "title": "Portfolio Flutter App",
        "description": "A personalized interactive resume featuring custom UI elements and smooth animations."
      },
      {
        "title": "Student Score Predictor",
        "description": "An AI/ML model designed to forecast academic outcomes based on historical performance data."
      },
      {
        "title": "AI-based Prediction System",
        "description": "A scalable machine learning system built for robust data analysis and predictive modeling."
      },
      {
        "title": "Currency Converter App",
        "description": "A utility application providing quick, real-time global exchange rate conversions."
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D), // Matches your app's dark background
      appBar: AppBar(
        title: const Text("Projects", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.blue), // Blue back arrow
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          final project = projects[index];
          
          return Card(
            color: const Color(0xFF222226), // Dark rounded card
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.deepPurpleAccent,
                  child: Icon(Icons.folder, color: Colors.white),
                ),
                title: Text(
                  project["title"]!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text(
                    project["description"]!,
                    style: const TextStyle(
                      color: Colors.white70, 
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}