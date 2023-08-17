import 'package:flutter/material.dart';
import 'package:my_weather/constants/constant.dart';

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
        appBar: AppBar(
            backgroundColor: Constant.whiteColor,
            elevation: 0,
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Constant.blackColor,
                ))),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 32.0,
            left: 10.0,
            right: 8.0,
          ),
          child: Column(
            children: [
              Row(),
              const Text(
                "Météoubh",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
              ),
              const Padding(
                padding: EdgeInsets.all(14.0),
                child: Text(
                  "Monday 7:00 AM",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/sun.png",
                  width: 270,
                  height: 270,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(14.0),
                child: Text(
                  "22°C",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "Good morning",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Icon(Icons.sunny),
                        Text(
                          "sunrise",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "7:00",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.thermostat),
                        Text(
                          "wind",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "4m/s",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.cloud),
                        Text(
                          "Temperature",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "23°",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.w300),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
