import 'package:flutter/material.dart';

class SkillCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const SkillCardWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(title),
            leading: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                  image,
                )),
            subtitle: Text(subtitle),
          ),
        ],
      ),
    );
  }
}
