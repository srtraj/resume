import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PlayStoreApps extends StatefulWidget {
  const PlayStoreApps({Key? key}) : super(key: key);

  @override
  State<PlayStoreApps> createState() => _PlayStoreAppsState();
}

class _PlayStoreAppsState extends State<PlayStoreApps> {
  @override
  void initState() {
    initPlatform();
    super.initState();
  }

  initPlatform() async {
    var url = Uri.parse(
        'https://play.google.com/store/apps/details?id=in.paygro.android');
    var response = await http.get(url);
    BeautifulSoup bs = BeautifulSoup(response.body);
    print('the header: ${response.body}');
    final allHeaderName = bs.findAll('td', attrs: {'class': 'oben'});
    allHeaderName.forEach((element) {
      print('the header: ${element.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}
