import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class EarthWorkExcavationScreen extends StatefulWidget {
  @override
  _EarthWorkExcavationScreenState createState() =>
      _EarthWorkExcavationScreenState();
}

class _EarthWorkExcavationScreenState extends State<EarthWorkExcavationScreen> {
  final String pdf = 'assets/pdfs/earth_work_excavation_of_roadway.pdf';

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
        title: Text("Earth Work Excavation of Roadway"),
      ),
      body: PDFViewer(
        document: _doc,
      ),
    );
  }
}
