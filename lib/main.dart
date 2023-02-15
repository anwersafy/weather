import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/pages/search.dart';
import 'package:weather/weather_provider/provider.dart';
import 'pages/first.dart';
import 'pages/home.dart';
void main() {
  runApp( WeatherApp());
}

class WeatherApp extends StatelessWidget {
   WeatherApp({super.key});
  WeatherModel? weather ;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context){
        return WeatherProvider() ;

      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}

