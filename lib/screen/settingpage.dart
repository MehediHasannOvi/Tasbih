import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasbih/controller/appcontroller.dart';
import 'package:tasbih/data/datasave.dart';
import 'package:tasbih/util/apptext.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  // final controller = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      init: AppController(),
      initState: (controller) {},
      builder: (controller) {
        return Scaffold(
      appBar: AppBar(
        title: AppText(
          text: "Setting",
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),

            // language change dropdown button
            ListTile(
              title: AppText(
                text: "Language",
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              trailing: DropdownButton(
                value: getLanguage(),
                items: [
                  for (var item in controller.language)
                    DropdownMenuItem(
                      value: item,
                      child: AppText(
                        text: item,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                ],
                onChanged: (value) {
                  controller.changeLanguage(value);
                },
              ),
            ),
            //****************************************** */
            //  Add more setting options here
            //****************************************** */
            ListTile(
              title: AppText(
                text: "Theme",
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              trailing: Switch(
                value: getTheme(),
                onChanged: (value) {
                  controller.changeTheme(value);
                },
              ),
            ),
            ListTile(
              title: AppText(
                text: "Notification",
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              trailing: Switch(
                value: getNotification(),
                onChanged: (value) {
                  setState(() {
                    saveNotification(value);
                  });
                },
              ),
            ),
            ListTile(
              title: AppText(
                text: "Vibration",
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              trailing: Switch(
                value: getVibration(),
                onChanged: (value) {
                  controller.changeVibration(value);
                },
              ),
            ),

            ListTile(
              title: AppText(
                text: "Reset",
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              trailing: IconButton(
                onPressed: () {
                  controller.deleteCount();
                },
                icon: const Icon(Icons.refresh),
              ),
            ),
            const Divider(),
            ListTile(
              title: AppText(
                text: "About",
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              trailing: IconButton(
                onPressed: () {
                  showAboutDialog(
                    context: context,
                    applicationName: "Tasbih",
                    applicationVersion: "1.0.0",
                    applicationIcon: const Icon(
                      Icons.info,
                    ),
                    applicationLegalese: "© 2024 Tasbih",
                    barrierDismissible: true,
                    useRootNavigator: false,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text:
                            "Tasbih is a simple app for counting tasbih. and it's free to use. ",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  );
                },
                icon: const Icon(CupertinoIcons.info),
              ),
            ),
            ListTile(
              title: AppText(
                text: "Rate Us",
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              trailing: IconButton(
                onPressed: () {
                  // Add your app link here
                },
                icon: const Icon(CupertinoIcons.star),
              ),
            ),
            ListTile(
              title: AppText(
                text: "Privacy Policy",
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              trailing: IconButton(
                onPressed: () {
                  // Add your privacy policy link here
                },
                icon: const Icon(CupertinoIcons.lock),
              ),
            ),

            ListTile(
              title: AppText(
                text: "Share",
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              trailing: IconButton(
                onPressed: () {
                  // Add your app link here
                },
                icon: const Icon(
                  CupertinoIcons.share,
                ),
              ),
            ),
          ],
        ),
      ),
    );
      },
    );
  }
}
