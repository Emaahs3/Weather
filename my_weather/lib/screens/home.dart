import 'package:flutter/material.dart';
import 'package:my_weather/constants/constant.dart';
import 'package:my_weather/screens/register.dart';
import 'package:provider/provider.dart';

class HomeWeather extends StatefulWidget {
  const HomeWeather({super.key});

  @override
  State<HomeWeather> createState() => _HomeWeatherState();
}

class _HomeWeatherState extends State<HomeWeather> {
  bool dismissible = false;
  String city = "Météoubh";
  String listCity = "Calavi";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.dark_mode),
              color: Constant.blackColor,
            )
          ],
          backgroundColor: Constant.whiteColor,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Register()));
              },
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Constant.blackColor,
              )),
        ),
        body: Padding(
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                    city,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w300),
                  )),
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
                  width: 200,
                  height: 200,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
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
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "WASIM",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              const Divider(
                indent: 140,
                endIndent: 140,
                height: 20,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22.0, left: 10, right: 10),
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
                    Container(
                      width: 2,
                      height: 30,
                      color: Colors.grey,
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
                    Container(
                      width: 2,
                      height: 30,
                      color: Colors.grey,
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
