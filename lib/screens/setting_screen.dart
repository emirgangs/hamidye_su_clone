// ignore_for_file: must_be_immutable, camel_case_types
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hamidye_water_example/const/texts.dart';
import 'package:hamidye_water_example/services/get_image.dart';
import 'package:hamidye_water_example/utility/colors.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          settingsText1,
          style: TextStyle(color: ColorItems().lightBlueText),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const ImageUploads(),
                  settingListtiletitleText(
                      titleAll:
                          FirebaseAuth.instance.currentUser!.displayName!),
                  settingListtiletitleText(
                      titleAll: FirebaseAuth.instance.currentUser!.email!),
                ],
              )),
          Expanded(
              flex: 7,
              child: Column(
                children: [
                  Text(
                    settingsText3,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: ColorItems().lightBlueText),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_on_sharp,
                        color: ColorItems().lightBlueText),
                    title: settingListtiletitleText(titleAll: settingsText4),
                    subtitle: const Text(settingsText5),
                    trailing: const ChangeValueNotiferBool(),
                  ),
                  ListTile(
                    leading:
                        Icon(Icons.lock, color: ColorItems().lightBlueText),
                    title: settingListtiletitleText(titleAll: settingsText6),
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications,
                        color: ColorItems().lightBlueText),
                    title: settingListtiletitleText(titleAll: settingsText7),
                    subtitle: const Text(settingsText8),
                    trailing: const ChangeValueNotiferBool(),
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications,
                        color: ColorItems().lightBlueText),
                    title: settingListtiletitleText(titleAll: settingsText9),
                    subtitle: const Text(settingsText10),
                    trailing: const ChangeValueNotiferBool(),
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications,
                        color: ColorItems().lightBlueText),
                    title: settingListtiletitleText(titleAll: settingsText11),
                    subtitle: const Text(settingsText12),
                    trailing: const ChangeValueNotiferBool(),
                  ),
                  Text(
                    settingsText13,
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                ],
              )),
        ],
      ),
    );
  }
}

class ChangeValueNotiferBool extends StatefulWidget {
  const ChangeValueNotiferBool({super.key});

  @override
  State<ChangeValueNotiferBool> createState() => _ChangeValueNotiferBoolState();
}

class _ChangeValueNotiferBoolState extends State<ChangeValueNotiferBool> {
  final ValueNotifier<bool> _tryBool = ValueNotifier<bool>(false);

  void _changeValue() {
    _tryBool.value = !_tryBool.value;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _tryBool,
      builder: (context, value, child) {
        return Switch.adaptive(
          activeColor: ColorItems().green,
          value: _tryBool.value,
          onChanged: (value) {
            _changeValue();
          },
        );
      },
    );
  }
}

class settingListtiletitleText extends StatelessWidget {
  settingListtiletitleText({super.key, required this.titleAll});
  String titleAll;
  @override
  Widget build(BuildContext context) {
    return Text(
      titleAll,
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(fontWeight: FontWeight.bold),
    );
  }
}
