import 'package:flutter/material.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Card(
        child: Container(
            height: 100,
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: const Text("I am Dip a web and mobile app developer")),
      ),
    );
  }
}
