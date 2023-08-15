import 'package:flutter/material.dart';

class HomeWeather extends StatefulWidget {
  const HomeWeather({super.key});

  @override
  State<HomeWeather> createState() => _HomeWeatherState();
}

class _HomeWeatherState extends State<HomeWeather> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 32.0, left: 8.0, right: 8.0),
          child: Column(
            children: [Row(), const Text("Météoubh")],
          ),
        ),
      ),
    );
  }
}
