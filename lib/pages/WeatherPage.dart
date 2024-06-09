import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/modules/weather_module.dart';
import 'package:weather/service/weather_service.dart';

enum WeatherCondition {
  clear,
  rainy,
  cloudy,
  snowy,
  thunderstorm,
}

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final WeatherService _weatherService =
      WeatherService('381464bc9911323e386eba026af1bcd6');
  Weather? _weather;

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  Future<void> _fetchWeather() async {
    try {
      final String city = await _weatherService.getCurrentCity();
      print('Current city: $city');
      final Weather weather = await _weatherService.getWeather(city);
      print(
          'Weather data: ${weather.cityName}, ${weather.temperature}, ${weather.mainCondition}');
      setState(() {
        _weather = weather;
      });
    } catch (e) {
      print('Error fetching weather: $e');
      // Handle error
    }
  }

  String _getWeatherConditionAsset() {
    if (_weather == null) {
      return "images/loading.json"; // Default loading animation
    }
    switch (_weather!.condition) {
      case WeatherCondition.clear:
        return "images/sun.json";
      case WeatherCondition.rainy:
        return "images/rain.json";
      case WeatherCondition.cloudy:
        return "images/cloudy.json";
      case WeatherCondition.snowy:
        return "images/snow.json";
      case WeatherCondition.thunderstorm:
        return "images/thunderstorm.json";
      default:
        return "images/unknown.json"; // Default unknown weather condition
    }
  }

  Color _getBackgroundColor() {
    if (_weather == null) {
      return Colors.grey; // Default color while loading
    }
    switch (_weather!.condition) {
      case WeatherCondition.clear:
        return Colors.blue;
      case WeatherCondition.rainy:
        return Colors.grey;
      case WeatherCondition.cloudy:
        return Colors.blueGrey;
      case WeatherCondition.snowy:
        return Colors.lightBlueAccent;
      case WeatherCondition.thunderstorm:
        return Colors.deepPurple;
      default:
        return Colors.white; // Default color for unknown condition
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _getBackgroundColor(), // Set background color
      body: Center(
        child: _weather == null
            ? CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  SizedBox(height: 5),
                  Text(
                    _weather?.cityName ?? "Loading City...",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Lottie.asset(
                    _getWeatherConditionAsset(),
                    width: 200,
                    height: 200,
                  ),
                  Text(
                    '${_weather?.temperature.round()}°C',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
      ),
    );
  }
}
