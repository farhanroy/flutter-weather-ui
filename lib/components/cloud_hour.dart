import 'package:flutter/material.dart';

import '../utils/dummy_data.dart';

class CloudHour extends StatelessWidget {
  const CloudHour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cloudData = DummyData.cloudData();
    return ListView.builder(
      shrinkWrap: true,
        itemCount: cloudData.length,
        itemBuilder: (context, index) {
          return CloudHourItem(cloudModel: cloudData[index]);
        }
    );
  }
}

class CloudHourItem extends StatelessWidget {
  final CloudModel cloudModel;

  const CloudHourItem({Key? key, required this.cloudModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(cloudModel.hour,
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w100),),
          const SizedBox(height: 8.0,),

          Icon(cloudModel.icon, size: 30,),
          const SizedBox(height: 8.0,),

          Text(cloudModel.cloud,
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w100),),
          const SizedBox(height: 8.0,),

          Text(cloudModel.temperature,
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w100),),
        ],
      ),
    );
  }
}

