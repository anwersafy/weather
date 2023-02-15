import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../models/weather_model.dart';
import '../services/weather_services.dart';
import '../weather_provider/provider.dart';

class SearchPage extends StatelessWidget {
  String? cityName ;
   SearchPage({this.updateUI});
   VoidCallback? updateUI;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Lottie.asset('images/61302-weather-icon.json'),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(

                  enabledBorder:  OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.blue),),
                  labelText: 'Enter City Name',
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onChanged: (data){
                  cityName = data;
                } ,
                onFieldSubmitted: (data)async {
                  cityName = data;


                  WeatherServices services = WeatherServices();
                  WeatherModel? weather = await services.getWeather(cityName: cityName!);
                  Provider.of<WeatherProvider>(context,listen: false).WeatherData = weather;
                  Provider.of<WeatherProvider>(context,listen: false).cityName = cityName;


                  Navigator.pop(context);


                  print(weather);




                },

              ),
            ),
          ),
        ],
      ),
    );
  }
}
