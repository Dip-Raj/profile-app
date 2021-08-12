import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Expanded(
              flex: 2,
              child: Hero(
                tag: "show",
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(
                    "images/profile.jpg",
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Dip Raj Rai",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.home,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      RichText(
                        text: const TextSpan(
                            text: "Lives in  ",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                            children: [
                              TextSpan(
                                text: "Itahari-9",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ],
                  ),
                  const Text("A technology enthusiast"),
                  const SizedBox(
                    height: 10.0,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
