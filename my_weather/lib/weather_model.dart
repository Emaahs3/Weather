class Weather {
  var cityname;
  var date;
  var tempGeneral;
  var text;
  var sunrise;
  var wind;
  var temperature;
  var icon;

  Weather(
      {required this.cityname,
      required this.date,
      required this.tempGeneral,
      required this.text,
      required this.sunrise,
      required this.wind,
      required this.temperature,
      required this.icon});

  Weather.fromJson(Map<String, dynamic> json) {
    cityname = json['location']['name'];
    date = json['location']['localtime'];
    tempGeneral = json['current']['temp_f'];
    text = json['current']['condition']['text'];
    sunrise = json['current']['cloud'];
    wind = json['current']['wind_mph'];
    temperature = json['current']['temp_c'];
    icon = json['current']['condition']['icon'];
  }
}
