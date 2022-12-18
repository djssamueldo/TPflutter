import 'package:climat/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoadingScreenState();
  }
}
class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    geolocation();
  }


  void geolocation() async{
    var weatherData = await WeatherModel().getLocationWeather();
    // Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    // print(position);
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return LocationScreen(
        locationWeather : weatherData,
      );

    }));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,

        )
      ),
    );
  }
}

SpinKitDoubleBounce({required Color color, required double size}) {
}
