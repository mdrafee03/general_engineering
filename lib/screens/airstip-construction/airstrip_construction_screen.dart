import 'package:flutter/material.dart';

import '../../shared/widgets/background_container.dart';
import '../../shared/widgets/pdf_button.dart';

class AirstripConstructionScreeen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Airstrip Construction'),
      ),
      body: BackgroundContainer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PdfButton(
                'Typical Airfield Layout',
                'assets/pdfs/typical_airfield_layout.pdf',
              ),
              SizedBox(height: 10),
              PdfButton(
                'Airfield Layout and Design',
                'assets/pdfs/airfield_layout_and_design.pdf',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
