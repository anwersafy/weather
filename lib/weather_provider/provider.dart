import 'package:flutter/cupertino.dart';
import 'package:weather/models/weather_model.dart';

class WeatherProvider extends ChangeNotifier {
 String? cityName ;
  WeatherModel? _WeatherData ;
  set WeatherData (WeatherModel? weather){
    _WeatherData  = weather ;
    notifyListeners();
  }
  WeatherModel? get WeatherData => _WeatherData ;

}