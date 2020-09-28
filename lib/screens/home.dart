import 'package:flutter/material.dart';

import '../router/route_const.dart';
import '../shared/widgets/button.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('General Engineering'),
      ),
      body: Center(
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
            Button(
                context, 'Building Materials Calculation', helipadConstruction),
            SizedBox(height: 10),
            Button(context, 'Plant Vehicle Capability', helipadConstruction),
            SizedBox(height: 10),
            Button(context, 'Books Copy', helipadConstruction),
          ],
        ),
      ),
    );
  }
}
