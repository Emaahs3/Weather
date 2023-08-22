import 'package:flutter/material.dart';
import 'package:my_weather/constants/constant.dart';
import 'package:my_weather/screens/home.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String mute = Constant.countries.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 32.0, left: 8.0, right: 8.0),
          child: SingleChildScrollView(
              child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(),
                  const Text(
                    "Hello",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: const [
                    TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(labelText: "Username"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: DropdownButton(
                  onChanged: (String? newValue) {
                    setState(() {
                      mute = newValue!;
                    });
                  },
                  isExpanded: true,
                  value: mute,
                  items: Constant.countries
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeWeather()));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity,
                        48), // Adjust the width and height as needed
                  ),
                  child: const Text("Commencer"),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
