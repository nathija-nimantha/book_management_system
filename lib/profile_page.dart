import 'package:flutter/material.dart';
import 'profile/header_section.dart';
import 'profile/about_section.dart';
import 'profile/skills_section.dart';
import 'profile/education_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeaderSection(),
            AboutSection(),
            SkillsSection(),
            EducationSection(),
          ],
        ),
      ),
    );
  }
}
