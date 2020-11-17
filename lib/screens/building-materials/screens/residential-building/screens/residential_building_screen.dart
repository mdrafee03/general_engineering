import 'package:flutter/material.dart';

import '../../../../../shared/widgets/pdf_viewer.dart';

class ResidentialBuildingScreen extends StatelessWidget {
  final String pdfLink = 'assets/pdfs/residential_building.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Residential Building"),
      ),
      body: PdfViewer(pdfLink),
    );
  }
}
