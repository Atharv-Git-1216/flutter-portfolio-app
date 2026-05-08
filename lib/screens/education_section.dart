import 'package:flutter/material.dart';

class EducationTimeline extends StatefulWidget {
  const EducationTimeline({super.key});

  @override
  State<EducationTimeline> createState() => _EducationTimelineState();
}

class _EducationTimelineState extends State<EducationTimeline>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..forward();
  }

  Widget item(String title, String subtitle, String duration, int index, bool isLast) {
    final animation = CurvedAnimation(
      parent: controller,
      curve: Interval(index * 0.2, 1, curve: Curves.easeOut),
    );

    return FadeTransition(
      opacity: animation,
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, 0.3),
          end: Offset.zero,
        ).animate(animation),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  width: 14,
                  height: 14,
                  decoration: const BoxDecoration(
                    color: Colors.indigo,
                    shape: BoxShape.circle,
                  ),
                ),
                if (!isLast)
                  Container(
                    width: 2,
                    height: 70,
                    color: Colors.indigo.shade200,
                  ),
              ],
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      const SizedBox(height: 4),
                      Text(subtitle),
                      const SizedBox(height: 4),
                      Text(duration,
                          style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Education",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        item("B.Tech CSE", "VIT Bhopal University", "2025 - 2029", 1, false),
        item("12th CBSE", "Senior Secondary", "2023 - 2025", 2, false),
        item("10th CBSE", "Secondary", "Completed 2023", 3, true),
      ],
    );
  }
}