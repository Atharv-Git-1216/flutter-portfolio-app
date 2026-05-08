import 'package:flutter/material.dart';

class EducationTimeline extends StatelessWidget {
  const EducationTimeline({super.key});

  Widget item(String title, String subtitle, String duration, bool isLast) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: const BoxDecoration(
                color: Colors.indigo,
                shape: BoxShape.circle,
              ),
            ),
            if (!isLast)
              Container(
                width: 2,
                height: 60,
                color: Colors.grey,
              ),
          ],
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Card(
            elevation: 3,
            margin: const EdgeInsets.only(bottom: 12),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(subtitle),
                  Text(duration, style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Education", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        item("B.Tech CSE", "VIT Bhopal University", "2025 - 2029", false),
        item("12th CBSE", "Senior Secondary", "2023 - 2025", false),
        item("10th CBSE", "Secondary", "Completed 2023", true),
      ],
    );
  }
}