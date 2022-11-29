import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../generated/assets.dart';

class PlayStoreApps extends StatelessWidget {
  const PlayStoreApps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Play Store Apps",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 50,
            ),
            AppListWidget(),
          ],
        ),
      ),
    );
  }
}

class AppListWidget extends StatelessWidget {
  const AppListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List imageList = [
      PlaysStoreDataModel(
          image: Assets.playstorePayGro,
          url:
              "https://play.google.com/store/apps/details?id=in.paygro.android"),
      PlaysStoreDataModel(
          image: Assets.playstorePurse,
          url:
              "https://play.google.com/store/apps/details?id=com.indyinvest.purse"),
    ];
    return Wrap(
        children: List.generate(
            imageList.length,
            (index) => AppWidget(
                  data: imageList[index],
                )));
  }
}

class AppWidget extends StatefulWidget {
  final PlaysStoreDataModel data;
  const AppWidget({Key? key, required this.data}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  late bool isHover;
  @override
  void initState() {
    isHover = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onHover: (isHover) {
            setState(() {
              isHover = isHover;
            });
          },
          onTap: () {
            _launchURL(widget.data.url);
          },
          child: Padding(
            padding: EdgeInsets.all(isHover ? 15 : 8.0),
            child: Image.asset(
              widget.data.image,
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }

  _launchURL(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class PlaysStoreDataModel {
  String image;
  String url;
  PlaysStoreDataModel({required this.image, required this.url});
}
