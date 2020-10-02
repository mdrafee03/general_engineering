import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class SepticTankScreen extends StatefulWidget {
  @override
  _SepticTankScreenState createState() => _SepticTankScreenState();
}

class _SepticTankScreenState extends State<SepticTankScreen> {
  final String pdf = 'assets/pdfs/septic_tank.pdf';
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
        title: Text("Septic Tank"),
      ),
      body: PDFViewer(
        document: _doc,
      ),
    );
  }
}
