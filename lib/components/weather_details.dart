import 'package:flutter/material.dart';

class WeatherDetails extends StatelessWidget {
  final String title;
  final String subtitle;

  const WeatherDetails({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 26.0),
          ),
          const SizedBox(
            height: 18.0,
          ),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 14.0),
          ),
        ],
      ),
    );
  }
}
