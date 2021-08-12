import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:clipboard/clipboard.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SocialLinkWidget extends StatelessWidget {
  const SocialLinkWidget({
    Key? key,
  }) : super(key: key);

  final String facebook = "https://www.facebook.com/dipraj.rai.37454";
  final String twitter = "https://www.facebook.com/dipraj.rai.37454";
  final String linkedin = "https://www.linkedin.com/in/dip-raj-rai-32a77a1b4/";
  final String github = "https://github.com/Dip-Raj";

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildSocialLinkIcon(
                FontAwesomeIcons.facebook,
                facebook,
                "facebook link copied",
                Colors.blue,
              ),
              buildSocialLinkIcon(
                FontAwesomeIcons.twitter,
                twitter,
                "twitter link copied",
                Colors.lightBlue,
              ),
              buildSocialLinkIcon(
                FontAwesomeIcons.linkedin,
                linkedin,
                "linkedin link copied",
                Colors.blueAccent,
              ),
              buildSocialLinkIcon(
                FontAwesomeIcons.github,
                github,
                "github link copied",
                Colors.black,
              ),
              const SizedBox(
                height: 10.0,
              )
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildSocialLinkIcon(
      IconData icon, String url, String msg, Color color) {
    return Expanded(
      child: IconButton(
        icon: Icon(
          icon,
          color: color,
          size: 30,
        ),
        onPressed: () {
          FlutterClipboard.copy(url);
          Fluttertoast.showToast(
            msg: msg,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
          );
        },
      ),
    );
  }
}
