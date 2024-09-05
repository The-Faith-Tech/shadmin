import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadmin_ui/views/homeView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late bool darkMode;
  @override
  void initState() {
    darkMode = false;
    super.initState();
  }

  _changeTheme() {
    setState(() {
      darkMode = !darkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(1920, 1080));
    return MaterialApp(
      title: 'Shadmin',
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
      themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
      home:  HomeView(
        onThemeChange: _changeTheme,
      ),
    );
  }
}
