import 'package:flutter/material.dart';
import 'package:resume_website/screens/widgets/skill_widget.dart';
import 'package:resume_website/screens/widgets/text_show_up.dart';

import 'experience_widget.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int delay = 1000;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const ShowUpWidget(
          delay: delay,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: "About",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: " Me",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
        const ShowUpWidget(
          delay: delay + 200,
          child: Text("I'm Sharathraj A",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              )),
        ),
        const ShowUpWidget(
          delay: delay,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: "Flutter",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: " developer",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const ShowUpWidget(
          delay: delay + 300,
          child: Text(
              "Passionate mobile application developer with proficiency in programming language "
              "and source code to create highly scalable applications."
              "Understanding of full mobile development life cycle;,"
              " along with knowledge of the general mobile architectures,"
              " state management,Rest Api, trends, and emerging technologies.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: ExperienceWidget(delay: delay)),
            Expanded(
                child: SkillWidget(
              delay: delay,
            ))
          ],
        )
      ],
    );
  }
}
