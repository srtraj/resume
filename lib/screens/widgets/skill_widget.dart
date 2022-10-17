import 'package:flutter/material.dart';
import 'package:resume_website/screens/widgets/text_show_up.dart';

class SkillWidget extends StatelessWidget {
  final int delay;
  const SkillWidget({Key? key, required this.delay}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List skillList = [
      "Flutter",
      "Firebase",
      "Rest Api",
      "State management",
      "Python",
      "Sql"
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShowUpWidget(
          delay: delay + 400,
          child: const Text("Skills i have",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ),
        const SizedBox(
          height: 25,
        ),
        Wrap(
          children: List.generate(skillList.length, (index) {
            int dly = delay + 500;
            return ShowUpWidget(
              delay: dly + index * 50,
              child: Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.grey[300]!, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(skillList[index],
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            );
          }),
        )
      ],
    );
  }
}
