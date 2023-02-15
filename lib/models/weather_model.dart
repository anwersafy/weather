class WeatherModel
{
     String date ;
     double temp ;
     String weatherStateName ;
     double maxtemp ;
     double mintemp ;
    WeatherModel(
        {required this.date,
          required this.maxtemp,
          required this.mintemp,
          required this.temp,
          required this.weatherStateName});

           factory WeatherModel.fromJson (dynamic data)
           {
             var jsonData = data['forecast']['forecastday'][0]['day'];
             print(jsonData);


             return WeatherModel(
                 date:   data['location']['localtime'],
                 maxtemp: jsonData['maxtemp_c'],
                 mintemp:  jsonData['mintemp_c'],
                 temp: jsonData['avgtemp_c'],
                 weatherStateName: jsonData['condition']['text']);

           }

           @override
  String toString() {
    return 'temp = $temp' ;
  }

             }
