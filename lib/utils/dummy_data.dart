import 'package:flutter/material.dart';

class DummyData {
  static List<WeatherModel> weatherData() {
    final List<WeatherModel> list = [
      WeatherModel(
          date: "23 Sep",
          day: "Hari ini",
          icon: Icons.wb_sunny_outlined,
          weather: "Hujan",
          temperature: "22/11C"),
      WeatherModel(
          date: "23 Sep",
          day: "Hari ini",
          icon: Icons.wb_sunny_outlined,
          weather: "Hujan",
          temperature: "22/11C"),
      WeatherModel(
          date: "23 Sep",
          day: "Hari ini",
          icon: Icons.wb_sunny_outlined,
          weather: "Hujan",
          temperature: "22/11C"),
      WeatherModel(
          date: "23 Sep",
          day: "Hari ini",
          icon: Icons.wb_sunny_outlined,
          weather: "Hujan",
          temperature: "22/11C"),
      WeatherModel(
          date: "23 Sep",
          day: "Hari ini",
          icon: Icons.wb_sunny_outlined,
          weather: "Hujan",
          temperature: "22/11C"),
      WeatherModel(
          date: "23 Sep",
          day: "Hari ini",
          icon: Icons.wb_sunny_outlined,
          weather: "Hujan",
          temperature: "22/11C"),
      WeatherModel(
          date: "23 Sep",
          day: "Hari ini",
          icon: Icons.wb_sunny_outlined,
          weather: "Hujan",
          temperature: "22/11C"),
    ];
    return list;
  }

  static List<CloudModel> cloudData() {
    final List<CloudModel> list = [];
    return list;
  }
}

class WeatherModel {
  final String date;
  final String day;
  final IconData icon;
  final String weather;
  final String temperature;

  WeatherModel(
      {required this.date,
      required this.day,
      required this.icon,
      required this.weather,
      required this.temperature});
}

class CloudModel {
  final String hour;
  final IconData icon;
  final String cloud;
  final String temperature;

  CloudModel(
      {required this.hour,
      required this.icon,
      required this.cloud,
      required this.temperature});
}
