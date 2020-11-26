import 'package:flutter/material.dart';

import '../../router/route_const.dart';
import '../models/pdf_model.dart';

class BookButton extends StatelessWidget {
  final String title;
  final String pdfLink;
  const BookButton(this.title, this.pdfLink);

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: RaisedButton(
        onPressed: () => Navigator.pushNamed(
          context,
          pdfViewer,
          arguments: PdfModel(this.title, this.pdfLink),
        ),
        padding: const EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textColor: Theme.of(context).primaryColor,
        child: Container(
          padding: const EdgeInsets.all(5.0),
          margin: const EdgeInsets.all(5.0),
          width: double.infinity,
          child: Text(
            title,
            style: const TextStyle(),
          ),
        ),
      ),
    );
  }
}
