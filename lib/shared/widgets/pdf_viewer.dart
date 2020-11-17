import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:printing/printing.dart';

class PdfViewer extends StatelessWidget {
  final String pdfLink;

  PdfViewer(this.pdfLink);

  Future<Uint8List> loadPdf() async {
    final pdf = await rootBundle.load(pdfLink);
    return pdf.buffer.asUint8List();
  }

  @override
  Widget build(BuildContext context) {
    return PdfPreview(
      build: (format) => loadPdf(),
      useActions: false,
    );
  }
}
