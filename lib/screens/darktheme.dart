import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/change_theme.dart';

class DarkTheme extends StatefulWidget {
  const DarkTheme({super.key});

  @override
  State<DarkTheme> createState() => _DarkThemeState();
}

class _DarkThemeState extends State<DarkTheme> {
  @override
  Widget build(BuildContext context) {

    final themeChanger = Provider.of<Theme_Changer_Provider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Theme'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RadioListTile<ThemeMode>(
            title: Text('Light Mode'),
              value: ThemeMode.light,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: Text('Dark Mode'),
            value: ThemeMode.dark,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: Text('System Mode'),
            value: ThemeMode.system,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
          ),

        ],
      ),
    );
  }
}
