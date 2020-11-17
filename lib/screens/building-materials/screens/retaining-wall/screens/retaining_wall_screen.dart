import 'package:flutter/material.dart';

import '../../../../../shared/widgets/pdf_viewer.dart';

class RetainingWallScreen extends StatelessWidget {
  final String pdfLink = 'assets/pdfs/retaining_wall.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Retaining Wall"),
      ),
      body: PdfViewer(pdfLink),
    );
  }
}
