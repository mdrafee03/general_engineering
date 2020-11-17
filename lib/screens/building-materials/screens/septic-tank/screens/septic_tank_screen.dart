import 'package:flutter/material.dart';

import '../../../../../shared/widgets/pdf_viewer.dart';

class SepticTankScreen extends StatelessWidget {
  final String pdfLink = 'assets/pdfs/septic_tank.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Septic Tank"),
      ),
      body: PdfViewer(pdfLink),
    );
  }
}
