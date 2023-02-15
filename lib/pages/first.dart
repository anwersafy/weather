import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/weather_provider/provider.dart';

import '../models/weather_model.dart';

class Main extends StatelessWidget {
   Main({Key? key}) : super(key: key);
  WeatherModel? weatherData;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
          body: Column(

            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacer(flex: 1,),
              Center(
                child: Text(
                  Provider.of<WeatherProvider>(context).cityName!

                ,style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 60,
                  color: Colors.white
                ),),
              ),
              Center(
                child: Text('9°',style: TextStyle(
                    fontSize: 60,
                    color: Colors.white
                ),),
              ),
              Center(
                child: Text('Clear',style: TextStyle(
                    fontSize: 60,
                    color: Colors.white
                ),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(' H:9°',style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                  ),),
                  Text(' L:9°',style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                  ),),


                ],
              ),
              Spacer(flex: 4,)

            ],
          )),
    );
  }
}
