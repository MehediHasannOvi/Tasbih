import 'package:flutter/material.dart';
import 'package:tasbih/data/datasave.dart';
import 'package:tasbih/function/imagechange.dart';
import 'package:tasbih/screen/settingpage.dart';
import 'package:vibration/vibration.dart';
import 'dart:io' show Platform;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    count = getCount();
    super.initState();
  }

  late int count;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Tasbih (تسبيح)'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SettingPage();
              }));
            },
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            _topimage(),
            const SizedBox(
              height: 20,
            ),
            _zekir(),
            const SizedBox(
              height: 50,
            ),
            _bottomButton(),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }

  _bottomButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: MaterialButton(
        onPressed: () {
          if (Platform.isAndroid) {
            Vibration.vibrate(
              duration: 50,
              amplitude: 50,
            );
          }
          setState(() {
            count++;
            saveCount(count);
          });
        },
        color: const Color(0xFF022E04),
        height: 50,
        child: const Text(
          'Start Tasbih',
          style: TextStyle(
            fontSize: 20,
            // fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  _topimage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            if (Platform.isAndroid) {
              Vibration.vibrate(
                duration: 50,
                amplitude: 50,
              );
            }
            setState(() {
              count++;
              saveCount(count);
            });
          },
          child: Image.asset(
            imageChange(count),
            height: 200,
            width: 200,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        StatefulBuilder(builder: (context, setState) {
          return Text(
            getCount().toString(),
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          );
        }),
      ],
    );
  }
}

_zekir() {
  return const Column(
    // mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Divider(),
      Text(
        "Arabic :",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 20,
      ),
     Align(
        child: Text(
          "سُبْحَانَ ٱللَّٰهِ",
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Divider(),
      Text(
        "English :",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        "Subhan allah",
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    ],
  );
}
