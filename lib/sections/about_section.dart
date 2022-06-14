import 'package:flutter/material.dart';
import 'package:newquist_dev/util/constants.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(250),
            child: Image.asset(
              'assets/profile.jpg',
              fit: BoxFit.cover,
              height: 250,
              width: 250,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            'ABOUT ME',
            style: title,
          ),
        ),
      ],
    );
  }
}
