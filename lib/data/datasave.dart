import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:tasbih/screen/homepage.dart';
import 'package:tasbih/screen/settingpage.dart';

var box = Hive.box("tasbih");

// hare Save Count Data On Local Data Base

Future saveCount(int count) async {
  await box.put("Count", count);
}

// hare Get Count Data From Local Data Base

getCount() {
  return box.get("Count", defaultValue: 0);
}

// hare Delete Count Data From Local Data Base

deleteCount() {
  box.delete("Count");
}
// hare Save Language Data On Local Data Base

Future saveLanguage(dynamic language) async {
  await box.put("Language", language);
}

// hare Get Language Data From Local Data Base

getLanguage() {
  return box.get("Language", defaultValue: "English");
}

// Vibration Setting Save On Local Data Base

Future saveVibration(bool value) async {
  await box.put("Vibration", value);
}

// Get Vibration Setting From Local Data Base

getVibration() {
  return box.get("Vibration", defaultValue: true);
}

// Theme Setting Save On Local Data Base

Future saveTheme(bool value) async {
  await box.put("Theme", value);
}

// Get Theme Setting From Local Data Base

getTheme() {
  return box.get("Theme", defaultValue: true);
}

// Notification Setting Save On Local Data Base

Future saveNotification(bool value) async {
  await box.put("Notification", value);
}

// Get Notification Setting From Local Data Base

getNotification() {
  return box.get("Notification", defaultValue: true);
}
