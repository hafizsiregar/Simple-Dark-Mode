import 'dart:ui';
import 'package:dark_mode/theme/theme_provider.dart';
import 'package:dark_mode/widget/change_theme_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark 
    ? 'DarkTheme' : 'LightTheme';

    final title = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark 
    ? 'Dark Mode' : 'Light Mode';

    final color = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark 
    ? Colors.amber : Colors.blue;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text(title),
        actions: [
          ChangeThemeButtonWidget(),
        ],
      ),
      body: Center(
        child: Text(
          'Hello $text!',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}