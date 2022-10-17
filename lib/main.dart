import 'package:flutter/material.dart';
import 'package:resume_website/screens/home_screen.dart';

enum DeviceType { mobile, tab, desktop }

final ValueNotifier<DeviceType?> deviceType = ValueNotifier<DeviceType?>(null);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
