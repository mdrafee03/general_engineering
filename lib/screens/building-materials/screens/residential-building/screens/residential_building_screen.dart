import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class ResidentialBuildingScreen extends StatefulWidget {
  @override
  _ResidentialBuildingScreenState createState() =>
      _ResidentialBuildingScreenState();
}

class _ResidentialBuildingScreenState extends State<ResidentialBuildingScreen> {
  final String pdf = 'assets/pdfs/residential_building.pdf';
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
        title: Text("Residential Building"),
      ),
      body: PDFViewer(
        document: _doc,
      ),
    );
  }
}
