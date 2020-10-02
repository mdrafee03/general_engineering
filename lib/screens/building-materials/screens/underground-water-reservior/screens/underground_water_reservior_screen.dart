import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class UndergroundWaterReserviorScreen extends StatefulWidget {
  @override
  _UndergroundWaterReserviorScreenState createState() =>
      _UndergroundWaterReserviorScreenState();
}

class _UndergroundWaterReserviorScreenState
    extends State<UndergroundWaterReserviorScreen> {
  final String pdf = 'assets/pdfs/underground_water_reservior.pdf';
  PDFDocument _doc;

  _initState() async {
    final doc = await PDFDocument.fromAsset(pdf);
    setState(() {
      _doc = doc;
    });
  }

  @override
  void initState() {
    super.initState();
    _initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Underground water reservior"),
      ),
      body: PDFViewer(
        document: _doc,
      ),
    );
  }
}
