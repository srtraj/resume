import 'package:flutter/material.dart';
import 'package:resume_website/screens/widgets/text_show_up.dart';

import '../../generated/assets.dart';

class DeveloperImageWidget extends StatelessWidget {
  const DeveloperImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wt = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.center,
      child: ShowUpWidget(
        delay: 200,
        child: Image.asset(
          Assets.assetsDeveloper,
          width: wt * 0.35,
        ),
      ),
    );
  }
}
