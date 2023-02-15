import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather/models/weather_model.dart';

class WeatherServices {

  Future<WeatherModel> getWeather({required String cityName }) async{
    String baseUrl ='http://api.weatherapi.com';
    String apiKey = 'a222ef8cab264617a3e141548230502';
    Uri url = Uri.parse('$baseUrl/v1/forecast.json?key=$apiKey&q=$cityName&days=7');
   http.Response response =  await http.get(url);
   Map<String, dynamic > data = jsonDecode(response.body);

    WeatherModel weather = WeatherModel.fromJson(data);
    return weather ;
















  }

}