import 'package:flutter/material.dart';
import 'package:my_weather/screens/register.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: ThemeData.light(useMaterial3: true),
        dark: ThemeData.dark(useMaterial3: true),
        initial: AdaptiveThemeMode.dark,
        builder: (theme, darkTheme) => MaterialApp(
              home: const Register(),
              darkTheme: darkTheme,
              debugShowCheckedModeBanner: false,
            ));
  }
}
