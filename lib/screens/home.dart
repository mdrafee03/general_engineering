import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../shared/widgets/background_container.dart';
import '../router/route_const.dart';
import '../shared/widgets/button.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  requestPermission() async {
    var status = await Permission.storage.status;
    if (status.isUndetermined || status.isDenied) {
      if (await Permission.storage.request().isGranted) {
        return;
      }
    }
  }

  @override
  void initState() {
    super.initState();
    requestPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('General Engineering'),
      ),
      body: BackgroundContainer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Button(context, 'Airstrip Construction', airstripConstruction),
              SizedBox(height: 10),
              Button(context, 'Helipad Construction', helipadConstruction),
              SizedBox(height: 10),
              Button(context, 'Brigade Water Point', brigadeWaterPointList),
              SizedBox(height: 10),
              Button(context, 'Building Materials Calculation',
                  buildingMaterialScreen),
              SizedBox(height: 10),
              Button(
                  context, 'Plant Vehicle Capability', plantVehicleCapability),
              SizedBox(height: 10),
              Button(context, 'Books Copy', booksCopy),
            ],
          ),
        ),
      ),
    );
  }
}
