import 'package:flutter/material.dart';
import 'package:my_weather/WeatherData.dart';
import 'package:my_weather/constants/constant.dart';
import 'package:my_weather/screens/register.dart';
import 'package:provider/provider.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

import '../weather_model.dart';

class HomeWeather extends StatefulWidget {
  HomeWeather({super.key});

  @override
  State<HomeWeather> createState() => _HomeWeatherState();
}

class _HomeWeatherState extends State<HomeWeather> {
  bool dismissible = false;
  String city = "Météoubh";
  String listCity = "Calavi";
  var client = WeatherData();
  var data;

  info() async {
    data = await client.getData(0, 0);
    print("le retour de la fonction est: $data");
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  AdaptiveTheme.of(context).toggleThemeMode();
                },
                icon: const Icon(Icons.dark_mode),
                color: Constant.blackColor,
              )
            ],
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
          body: FutureBuilder(
              future: info(),
              builder: ((context, snapshot) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 32.0,
                      left: 10.0,
                      right: 8.0,
                    ),
                    child: Column(
                      children: [
                        Row(),
                        TextButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  isDismissible: true,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return ListView.builder(
                                      itemCount: 25,
                                      itemBuilder: (context, index) {
                                        return Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            TextButton(
                                              child: Text(
                                                listCity,
                                                style: const TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 138, 141, 142)),
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  dismissible = true;
                                                  city = listCity;
                                                });
                                              },
                                            ),
                                            const Divider(
                                              thickness: 2,
                                              height: 0,
                                            )
                                          ],
                                        );
                                      },
                                    );
                                  });
                            },
                            child: Text(
                              "${data?.cityname}",
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w300),
                            )),
                        Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text(
                            "${data?.date}",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                            "https:${data?.icon}",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "${data?.tempGeneral}",
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            "${data?.text}",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            "WASIM",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ),
                        const Divider(
                          indent: 140,
                          endIndent: 140,
                          height: 20,
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 22.0, left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  const Icon(Icons.sunny),
                                  const Text(
                                    "sunrise",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  Text(
                                    "${data?.sunrise}",
                                    style: const TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                              Container(
                                width: 2,
                                height: 30,
                                color: Colors.grey,
                              ),
                              Column(
                                children: [
                                  Icon(Icons.thermostat),
                                  const Text(
                                    "wind",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  Text(
                                    "${data?.wind}",
                                    style: const TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                              Container(
                                width: 2,
                                height: 30,
                                color: Colors.grey,
                              ),
                              Column(
                                children: [
                                  Icon(Icons.cloud),
                                  const Text(
                                    "Temperature",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  Text(
                                    "${data?.tempGeneral}",
                                    style: const TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }))),
    );
    ;
  }
}
