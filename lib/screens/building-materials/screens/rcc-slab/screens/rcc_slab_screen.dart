import 'package:flutter/material.dart';

import '../../../../../shared/widgets/pdf_viewer.dart';

class RCCSlabScreen extends StatelessWidget {
  final String pdfLink = 'assets/pdfs/RCC_slab.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RCC Slab"),
      ),
      body: PdfViewer(pdfLink),
    );
  }
}
