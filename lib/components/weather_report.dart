import 'package:flutter/material.dart';

import '../utils/dummy_data.dart';

class WeatherReport extends StatelessWidget {
  const WeatherReport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final weatherData = DummyData.weatherData();
    return ListView.builder(
        shrinkWrap: true,
        itemCount: weatherData.length,
        itemBuilder: (context, index) {
          return WeatherReportItem(weatherModel: weatherData[index]);
        });
  }
}

class WeatherReportItem extends StatelessWidget {
  final WeatherModel weatherModel;

  const WeatherReportItem({Key? key, required this.weatherModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            weatherModel.date,
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w100),
          ),
          Text(
            weatherModel.day,
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w100),
          ),
          Icon(weatherModel.icon),
          Text(
            weatherModel.weather,
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w100),
          ),
          Text(
            weatherModel.temperature,
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w100),
          ),
        ],
      ),
    );
  }
}
