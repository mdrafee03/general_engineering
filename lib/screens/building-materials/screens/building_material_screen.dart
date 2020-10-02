import 'package:flutter/material.dart';

import '../../../router/route_const.dart';
import '../../../shared/widgets/button.dart';

class BuildingMaterialScreen extends StatelessWidget {
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
            Button(context, 'Estimation of Brick Wall', brickWallList),
            SizedBox(height: 10),
            Button(context, 'Estimation of Concrete Slab', concreteSlabList),
            SizedBox(height: 10),
            Button(context, 'Estimation of RCC Slab', rccSlab),
            SizedBox(height: 10),
            Button(context, 'Estimation Retaining Wall', retainingWall),
            SizedBox(height: 10),
            Button(context, 'Estimation of Septic Tank', septicTank),
            SizedBox(height: 10),
            Button(context, 'Estimation of Underground Water Reservior',
                undergroundWaterReservior),
            SizedBox(height: 10),
            Button(context, 'Estimation Residential Building',
                residentialBuilding),
            SizedBox(height: 10),
            Button(context, 'Estimation of Earth Work Excavation of Roadway',
                earthWorkExcavation),
          ],
        ),
      ),
    );
  }
}
