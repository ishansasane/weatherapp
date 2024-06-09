import 'package:weather/pages/WeatherPage.dart';

class Weather {
  final String cityName;
  final double temperature;
  final String mainCondition;

  Weather({
    required this.cityName,
    required this.temperature,
    required this.mainCondition,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      temperature: json['main']['temp'].toDouble(),
      mainCondition: json['weather'][0]['main'],
    );
  }

  WeatherCondition get condition {
    switch (mainCondition.toLowerCase()) {
      case 'clear':
        return WeatherCondition.clear;
      case 'rain':
      case 'drizzle':
        return WeatherCondition.rainy;
      case 'clouds':
        return WeatherCondition.cloudy;
      case 'snow':
        return WeatherCondition.snowy;
      case 'thunderstorm':
        return WeatherCondition.thunderstorm;
      default:
        return WeatherCondition.clear; // Default to clear if unknown
    }
  }
}
