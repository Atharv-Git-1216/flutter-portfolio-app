import 'dart:async';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  final PageController controller = PageController();
  int index = 0;

  final List<String> texts = [
    "Welcome to My Portfolio",
    "Flutter Developer",
    "CSE Core Student",
    "Building Real-World Apps"
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 3), (timer) {
      index++;
      if (index == texts.length) index = 0;
      controller.animateToPage(index,
          duration: const Duration(milliseconds: 600), curve: Curves.easeInOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: PageView.builder(
        controller: controller,
        itemCount: texts.length,
        itemBuilder: (_, i) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.indigo, Colors.blue],
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Text(
                texts[i],
                style: const TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 22, 22, 22),
                    fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}