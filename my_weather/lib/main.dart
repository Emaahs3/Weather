import 'package:flutter/material.dart';
import 'package:my_weather/constants/modeltheme.dart';
import 'package:my_weather/screens/register.dart';
import 'package:provider/provider.dart';

import 'constants/constant.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => ModelTheme(),
        child: Consumer<ModelTheme>(
          builder: (context, ModelTheme themeNotifier, child) {
            debugPrint(themeNotifier.isDark.toString());

            return MaterialApp(
                appBar: AppBar(
                  actions: [
                    IconButton(
                      onPressed: () {
                        themeNotifier.isDark = !themeNotifier.isDark;
                        debugPrint(themeNotifier.isDark.toString());
                      },
                      icon: const Icon(Icons.dark_mode),
                      color: Constant.blackColor,
                    )
                  ],
                  backgroundColor: Constant.whiteColor,
                  elevation: 0,
                  leading: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Register()));
                      },
                      icon: const Icon(
                        Icons.arrow_back_rounded,
                        color: Constant.blackColor,
                      )),
                ),
                theme: themeNotifier.isDark
                    ? ThemeData(brightness: Brightness.light)
                    : ThemeData(brightness: Brightness.dark),
                debugShowCheckedModeBanner: false,
                home: Scaffold(
                  body: const Register(),
                ));
          },
        ));
  }
}
