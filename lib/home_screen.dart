import 'package:flutter/material.dart';
import 'package:profile_app/widgets/full_screen_image.dart';
import 'package:profile_app/widgets/pie_chart_widget.dart';

import 'widgets/about_me_widget.dart';
import 'widgets/profile_card_widget.dart';
import 'widgets/skill_card_widget.dart';
import 'widgets/social_link_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FullScreenImage();
                }));
              },
              child: const ProfileCardWidget(),
            ),
            // const AboutMeSection(),
            const Divider(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Text(
                "Skills",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            const SkillCardWidget(
              title: "App Development",
              image: 'images/app.jpg',
              subtitle: 'Dart and flutter',
            ),
            const SkillCardWidget(
              title: "Web Development",
              image: 'images/web.jpeg',
              subtitle: 'React, html, css, bootstrap, javascript, node',
            ),
            const SkillCardWidget(
              title: "Software Development",
              image: 'images/software.jpg',
              subtitle: 'Java, C#, .net framework',
            ),
            PieChartWidget(),
            const SizedBox(
              height: 10.0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: Text(
                "Social Links",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            const SocialLinkWidget(),
            // const SizedBox(
            //   height: 10.0,
            // )
          ],
        ),
      ),
    );
  }
}
