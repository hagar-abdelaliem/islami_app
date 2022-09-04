import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  static const String routeName = 'setting';

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isSwitchOn = false;
  List<String> languageList = ['English', 'Arabic'];
  String dropDawnValue = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe2e1e1),
      appBar: AppBar(
        centerTitle: false,
        title: Text('Settings'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Language'),
            leading: Icon(Icons.language),
            trailing: DropdownButton(
              items: languageList
                  .map((String value) => DropdownMenuItem(
                        child: Text(value),
                        value: value,
                      ))
                  .toList(),
              value: dropDawnValue,
              onChanged: (String? val) {
                setState(() {
                  dropDawnValue = val!;
                });
              },
              style: TextStyle(color: Colors.grey, fontSize: 16),
              dropdownColor: Color(0xffe2e1e1),
            ),
          ),
          Divider(),
          SwitchListTile(
            title: Text('Dark mode'),
            secondary: Icon(Icons.dark_mode),
            value: isSwitchOn,
            onChanged: (bool val) {
              setState(() {
                isSwitchOn = val;
              });
            },
            activeColor: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
