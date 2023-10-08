import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_weather/weather_model.dart';

class WeatherData {
  Future<Weather> getData(var latitude, var longititude) async {
    var urlCall = Uri.parse(
        "http://api.weatherapi.com/v1/current.json?key=8f4bf43833de40a4a66104957230510&q=London&aqi=no");
    var response = await http.get(urlCall);
    var body = jsonDecode(response.body);
    print(body);
    // print(Weather.fromJson(body));
    return Weather.fromJson(body);
  }
}
