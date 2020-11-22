import 'package:flutter/material.dart';

import '../../../router/route_const.dart';
import '../../../shared/widgets/button.dart';
import '../../../shared/widgets/pdf_button.dart';

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
            PdfButton(
              'Estimation of RCC Slab',
              'assets/pdfs/RCC_slab.pdf',
            ),
            SizedBox(height: 10),
            PdfButton(
              'Estimation Retaining Wall',
              'assets/pdfs/retaining_wall.pdf',
            ),
            SizedBox(height: 10),
            PdfButton(
              'Estimation of Septic Tank',
              'assets/pdfs/septic_tank.pdf',
            ),
            SizedBox(height: 10),
            PdfButton(
              'Estimation of Underground Water Reservior',
              'assets/pdfs/underground_water_reservior.pdf',
            ),
            SizedBox(height: 10),
            PdfButton(
              'Estimation Residential Building',
              'assets/pdfs/residential_building.pdf',
            ),
            SizedBox(height: 10),
            PdfButton(
              'Estimation of Earth Work Excavation of Roadway',
              'assets/pdfs/earth_work_excavation_of_roadway.pdf',
            ),
          ],
        ),
      ),
    );
  }
}
