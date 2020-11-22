import 'package:flutter/material.dart';
import 'package:general_engineering/shared/widgets/background_container.dart';
import 'package:general_engineering/shared/widgets/pdf_button.dart';

class HelipadConstructionScreeen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Helipad Construction'),
      ),
      body: BackgroundContainer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PdfButton(
                'Typical Helipad Layout',
                'assets/pdfs/helipad.pdf',
              ),
              SizedBox(height: 10),
              PdfButton(
                'Technical Data of Helipad',
                'assets/pdfs/tech_data_of_helipad.pdf',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
