import 'dart:convert';
import 'package:weather_app3/models/weather_api.dart';
import 'package:http/http.dart' as http;


class WeatherService{
  Future<Weather> getWeatherData() async {
    final uri = Uri.parse('http://api.weatherapi.com/v1/current.json?key=73a36cfc40d842d7851170424221910&q=$city&aqi=no');
    final response = await http.get(uri);
    if(response.statusCode == 200){
      return Weather.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed');
    }
  }
}
String city = 'London';
















