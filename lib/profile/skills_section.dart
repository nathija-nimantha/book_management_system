// lib/profile/skills_section.dart

import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({Key? key}) : super(key: key);

  final List<String> skills = const ['Dart', 'Flutter', 'JavaScript', 'Python', 'Java'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Skills', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Column(
            children: skills.map((skill) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(skill, style: const TextStyle(fontSize: 16)),
                    const Expanded(
                      child: LinearProgressIndicator(
                        value: 0.8, // Example proficiency level
                        color: Colors.blue,
                        backgroundColor: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
