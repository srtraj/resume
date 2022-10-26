import 'package:flutter/material.dart';
import 'package:resume_website/screens/widgets/about_me.dart';
import 'package:resume_website/screens/widgets/developer_image_widget.dart';
import 'package:resume_website/screens/widgets/playstore_apps.dart';

import '../main.dart';
import 'action_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ht = MediaQuery.of(context).size.height;
    final wt = MediaQuery.of(context).size.width;
    deviceType.value = wt > 1000
        ? DeviceType.desktop
        : wt > 800
            ? DeviceType.tab
            : DeviceType.mobile;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: "Portf",
                            style: const TextStyle(
                                fontFamily: "Pacifico-Regular",
                                fontSize: 50,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                          text: "olio",
                          style: const TextStyle(
                              fontFamily: "Pacifico-Regular",
                              fontSize: 50,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const ActionButtonListWidget(),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: ht * 0.8,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: wt * 0.5,
                    child: const AboutMeWidget(),
                  ),
                  const DeveloperImageWidget()
                ],
              ),
            ),
            PlayStoreApps()
          ],
        ),
      ),
    );
  }
}
