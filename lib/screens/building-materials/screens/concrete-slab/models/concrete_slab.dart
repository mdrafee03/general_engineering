import 'dart:io';

import 'package:flutter/material.dart' as m;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:printing/printing.dart';

import '../../../../../shared/models/utility.dart';
import '../../../../../shared/widgets/section_heading_pw.dart';
import '../../../../../shared/widgets/top_header_pw.dart';

class ConcreteSlab {
  double length;
  double width;
  double thickness;
  double shrinkageFactor;
  double cementRatio;
  double faRatio;
  double caRatio;

  double get _sumOfRatio {
    return cementRatio + faRatio + caRatio;
  }

  int get volumeOfConcrete {
    return (length * width * thickness / 12 * shrinkageFactor).ceil();
  }

  int get cementRequired {
    return ((cementRatio / _sumOfRatio) * volumeOfConcrete / 1.25).ceil();
  }

  double get faValue {
    return (faRatio / _sumOfRatio) * volumeOfConcrete;
  }

  double get caValue {
    return (caRatio / _sumOfRatio) * volumeOfConcrete;
  }

  Future<void> generatePDF(Document doc) async {
    doc.addPage(
      MultiPage(
        pageFormat: PdfPageFormat.a4,
        build: (Context context) {
          return [
            TopHeaderPw('Summary of Estimation of Concrete Slab'),
            SectionHeadingPw(
              "1 .",
              "Basic Calculation",
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "a. Volume of concrete = $volumeOfConcrete cft",
                  ),
                  Text(
                    "b. Cement Required = $cementRequired bags",
                  ),
                  Text(
                    "c. Fine Aggregate Required = ${faValue.toStringAsFixed(2)} cft",
                  ),
                  Text(
                    "d. Coarse Aggregate Required = ${caValue.toStringAsFixed(2)} cft",
                  ),
                ],
              ),
            ),
          ];
        },
      ),
    );
  }

  void savePDF(m.BuildContext ctx) async {
    var doc = Document();
    await generatePDF(doc);
    final directory = '/storage/emulated/0/Download';
    final file = File(
        "$directory/Concrete-Slab${DateTime.now().millisecondsSinceEpoch}.pdf");
    await file.writeAsBytes(doc.save());
    Utility.showPrintedToast(ctx);
  }

  void sharePDF() async {
    var doc = Document();
    await generatePDF(doc);
    await Printing.sharePdf(bytes: doc.save(), filename: 'Concrete-Slab.pdf');
  }
}
