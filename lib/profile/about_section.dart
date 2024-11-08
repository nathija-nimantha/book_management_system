import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'About',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'Experienced software developer with expertise in mobile and web applications. Currently focused on building Flutter applications with engaging user experiences.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}