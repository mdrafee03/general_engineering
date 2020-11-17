import 'package:flutter/material.dart';

import '../../../../../shared/widgets/pdf_viewer.dart';

class EarthWorkExcavationScreen extends StatelessWidget {
  final String pdfLink = 'assets/pdfs/earth_work_excavation_of_roadway.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Earth Work Excavation of Roadway"),
      ),
      body: PdfViewer(pdfLink),
    );
  }
}
