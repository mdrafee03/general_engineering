import 'package:flutter/material.dart';

import '../../shared/widgets/background_container.dart';
import '../../shared/widgets/pdf_button.dart';

class PlantVehicleScreeen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Vehicle Capability'),
      ),
      body: BackgroundContainer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PdfButton(
                'Plant Vehicle Capabilities',
                'assets/pdfs/plant_vehicle_capabilities.pdf',
              ),
              SizedBox(height: 10),
              PdfButton(
                'Engineer Plant',
                'assets/pdfs/engineer_plant.pdf',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
