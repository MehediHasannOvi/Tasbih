import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:tasbih/data/datasave.dart';

import 'package:tasbih/screen/homepage.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('tasbih');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tasbih',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        // primaryColor: const Color(0xFFFFFFFF),
        // primarySwatch: Colors.green,
        // scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        brightness: getTheme() ? Brightness.light : Brightness.dark,
      ),
      home: const HomePage(),
    );
  }
}
