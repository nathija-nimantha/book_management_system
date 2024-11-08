import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: const [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/profile.png'),
          ),
          SizedBox(height: 10),
          Text(
            'John Doe',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text('Software Engineer | Flutter Developer'),
          Text('Location: New York, NY'),
        ],
      ),
    );
  }
}