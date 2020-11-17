import 'package:flutter/material.dart';

import '../../../../../shared/widgets/pdf_viewer.dart';

class UndergroundWaterReserviorScreen extends StatelessWidget {
  final String pdfLink = 'assets/pdfs/underground_water_reservior.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Underground water reservior"),
      ),
      body: PdfViewer(pdfLink),
    );
  }
}
