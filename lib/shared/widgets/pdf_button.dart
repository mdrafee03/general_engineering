import 'package:flutter/material.dart';

import '../../router/route_const.dart';
import '../../shared/models/pdf_model.dart';

class PdfButton extends StatelessWidget {
  final String title;
  final String pdfLink;
  const PdfButton(this.title, this.pdfLink);

  @override
  Widget build(context) {
    return Container(
      child: RaisedButton(
        onPressed: () => Navigator.pushNamed(
          context,
          pdfViewer,
          arguments: PdfModel(this.title, this.pdfLink),
        ),
        padding: const EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textColor: Colors.white,
        color: Theme.of(context).primaryColor,
        child: Container(
          padding: const EdgeInsets.all(15.0),
          width: 320,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
