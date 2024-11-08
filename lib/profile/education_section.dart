import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Education', style: Theme.of(context).textTheme.titleLarge),
          SizedBox(height: 8),
          ListTile(
            title: Text('Bachelor of Science in Computer Science'),
            subtitle: Text('XYZ University'),
            trailing: Text('2023'),
          ),
        ],
      ),
    );
  }
}