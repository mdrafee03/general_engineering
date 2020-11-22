import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:printing/printing.dart';

import '../../shared/models/pdf_model.dart';

class PdfViewer extends StatelessWidget {
  Future<Uint8List> loadPdf(String pdfLink) async {
    final pdf = await rootBundle.load(pdfLink);
    return pdf.buffer.asUint8List();
  }

  @override
  Widget build(BuildContext context) {
    PdfModel _model = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(_model.title),
      ),
      body: PdfPreview(
        build: (format) => loadPdf(_model.pdfLink),
        useActions: false,
      ),
    );
  }
}
