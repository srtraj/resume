import 'package:flutter/material.dart';
import 'package:resume_website/screens/widgets/text_show_up.dart';

class ExperienceWidget extends StatelessWidget {
  final int delay;
  const ExperienceWidget({Key? key, required this.delay}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ExperienceModel> experienceList = [
      ExperienceModel(
          company: 'Winman Software India LLP',
          start: 'June 2019',
          end: 'January 2020',
          role: 'Software Developer'),
      ExperienceModel(
          company: 'Tata Consultancy Services',
          start: 'February 2020',
          end: 'November 2021',
          role: 'Associate software engineer'),
      ExperienceModel(
          company: 'Mindstack Technologies',
          start: 'December 2021',
          end: 'present',
          role: 'Flutter developer')
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShowUpWidget(
          delay: delay + 400,
          child: const Text("Experience",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 25,
        ),
        ...List.generate(experienceList.length, (index) {
          int dly = delay + 500;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShowUpWidget(
                delay: dly + index * 50,
                child: Text(experienceList[index].role,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 5,
              ),
              ShowUpWidget(
                delay: dly + index * 50 + 50,
                child: Text(experienceList[index].company,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    )),
              ),
              const SizedBox(
                height: 5,
              ),
              ShowUpWidget(
                delay: dly + index * 50 + 100,
                child: Row(
                  children: [
                    const Icon(
                      Icons.calendar_month,
                      color: Colors.grey,
                      size: 14,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(experienceList[index].start,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        )),
                    const Text("  -  ",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        )),
                    Text(experienceList[index].end,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          );
        })
      ],
    );
  }
}

class ExperienceModel {
  final String company;
  final String start;
  final String end;
  final String role;

  ExperienceModel(
      {required this.company,
      required this.start,
      required this.end,
      required this.role});
}
