import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class RCCSlabScreen extends StatefulWidget {
  @override
  _RCCSlabScreenState createState() => _RCCSlabScreenState();
}

class _RCCSlabScreenState extends State<RCCSlabScreen> {
  final String pdf = 'assets/pdfs/RCC_slab.pdf';
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
        title: Text("RCC Slab"),
      ),
      body: PDFViewer(
        document: _doc,
      ),
    );
  }
}
