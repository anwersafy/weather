import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/pages/search.dart';
import 'package:weather/services/weather_services.dart';
import 'package:weather/weather_provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WeatherModel? WeatherData ;

  void updateUI(){
    setState(() {

    });
  }


  @override
  Widget build(BuildContext context) {
    WeatherData = Provider.of<WeatherProvider>(context).WeatherData ;
    return SafeArea(

      child: Scaffold(
        backgroundColor: Colors.black,
        body:WeatherData ==null? Column(
          children: [
            Lottie.asset('images/32532-day-night.json'),

            Text('Weather App',
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue
            ),),
            Spacer(flex: 1,),

            Container(
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPage(

                    )));

                  },child: Text('Get Started'),
              )


            ),
            Spacer(flex: 1,),
          ],
        ): Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(flex: 1,),
            Center(
              child: Text(
                Provider.of<WeatherProvider>(context).cityName!,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 60,
                  color: Colors.white
              ),),
            ),
            Center(
              child: Text('${WeatherData!.temp.toInt()}°',style: TextStyle(
                  fontSize: 60,
                  color: Colors.white
              ),),
            ),
            Center(
              child: Text(WeatherData!.weatherStateName,style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(' H: ${WeatherData!.maxtemp.toInt()}°',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),),
                Text(' L: ${WeatherData!.mintemp.toInt()}°',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),),


              ],
            ),

            Spacer(flex: 4,)

          ],
        )




      ),
    );}
}
