import 'package:flutter/material.dart';

import '../components/weather_details.dart';
import '../components/weather_report.dart';
import '../components/cloud_hour.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomScrollView(
          slivers: [
            _AppBarSection(),
            _BodySection()
          ],
        ));
  }
}

class _AppBarSection extends StatelessWidget {
  const _AppBarSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 350.0,
      title: const Text(
        "London",
        style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      elevation: 0.3,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 0.9],
                colors: [
                  Color(0xFF56CCF2),
                  Colors.white,
                ],
              )),
        ),
      ),
      leading: const Icon(
        Icons.sort,
        color: Colors.white,
      ),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      actions: const [
        Icon(
          Icons.more_vert_sharp,
          color: Colors.white,
        )
      ],
    );
  }
}


class _BodySection extends StatelessWidget {
  const _BodySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (_, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _first(),
                const SizedBox(height: 18.0,),

                _second(),
                const SizedBox(height: 64.0,),

                const CloudHour(),
                const SizedBox(height: 32.0,),

                _third(),
                const SizedBox(height: 32,),

                const Text(
                  "Ramalan cuaca untuk 15 hari ke depan",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFF0066FF), fontSize: 14.0),
                ),
                const SizedBox(height: 32,),

                _fourth()
              ],
            ),
          );
        },
        childCount: 1,
      ),
    );
  }

  Widget _first() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "16",
          style: TextStyle(fontSize: 56.0),
        ),
        Text(
          "Sebagian\nBerawan",
          style: TextStyle(fontSize: 18.0),
        ),
      ],
    );
  }
  Widget _second() {
    return Row(
      children: const [
        Text(
          "22°C/14°C",
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          width: 18.0,
        ),
        Text(
          "Jum",
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
  Widget _third() {
    return Column(
      children: const [
        Text(
          "Laporan Cuaca 7 Hari",
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
        SizedBox(
          height: 8.0,
        ),
        WeatherReport(),
      ],
    );
  }
  Widget _fourth() {
    return Column(
      children: [
        const Text(
          "Rincian cuaca",
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          children: const [
            WeatherDetails(title: "15", subtitle: "Suhu Terasa"),
            WeatherDetails(title: "16", subtitle: "Visibilitas"),
            WeatherDetails(title: "1.021", subtitle: "Tekanan Udara"),
            WeatherDetails(title: "Sangat Luas", subtitle: "UV"),
            WeatherDetails(title: "50%", subtitle: "Kelembaban"),
            WeatherDetails(title: "18 km/j", subtitle: "Angin Barat"),
          ],
        )
      ],
    );
  }
}
