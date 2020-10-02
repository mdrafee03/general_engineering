import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class RetainingWallScreen extends StatefulWidget {
  @override
  _RetainingWallScreenState createState() => _RetainingWallScreenState();
}

class _RetainingWallScreenState extends State<RetainingWallScreen> {
  final String pdf = 'assets/pdfs/retaining_wall.pdf';
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
        title: Text("Retaining Wall"),
      ),
      body: PDFViewer(
        document: _doc,
      ),
    );
  }
}
