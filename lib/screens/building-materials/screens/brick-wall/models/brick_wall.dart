import 'dart:io';
import 'package:flutter/material.dart' as m;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:printing/printing.dart';

import '../../../../../shared/models/serial_manage.dart';
import '../../../../../shared/models/utility.dart';
import '../../../../../shared/widgets/section_heading_pw.dart';
import '../../../../../shared/widgets/top_header_pw.dart';

class BrickWall {
  double length;
  double width;
  double thickness;
  double cementRatio;
  double sandRatio;

  final volumeOfABrick = 0.087;

  int get quantity {
    return (length * width).ceil();
  }

  int get volumeOfBrickwork {
    return (quantity * thickness / 12).ceil();
  }

  int get numberOfBricks {
    return (volumeOfBrickwork / volumeOfABrick).floor();
  }

  double get mortarVolume {
    double volumeOfBrick = numberOfBricks * 0.79 * 0.37 * 0.23;
    return volumeOfBrickwork - volumeOfBrick;
  }

  double get dryVolumeOfMortar {
    return mortarVolume * 1.30;
  }

  double get _sumOfRatio {
    return cementRatio + sandRatio;
  }

  int get cementVolume {
    return ((dryVolumeOfMortar / _sumOfRatio) * cementRatio / 1.25).ceil();
  }

  int get sandVolume {
    return ((dryVolumeOfMortar / _sumOfRatio) * sandRatio).ceil();
  }

  int upperRoundTo(int type, dynamic value) {
    return value % type != 0
        ? (value + type - (value % type)).round()
        : value.toInt();
  }

  Future<void> generatePDF(Document doc) async {
    final slForParent = SerialManage();

    doc.addPage(
      MultiPage(
        pageFormat: PdfPageFormat.a4,
        build: (Context context) {
          return [
            TopHeaderPw('Summary of Estimation of Brick Wall '),
            SectionHeadingPw(
              "${slForParent.serialNum} .",
              "Number of Bricks Calculation",
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "a. Quantity of Brickwork for the wall = $quantity sq ft",
                  ),
                  Text(
                    "b. Volume of Estimated Brickwork = $volumeOfBrickwork cft",
                  ),
                  Text(
                    "c. Number of bricks = $numberOfBricks Nos",
                  ),
                ],
              ),
            ),
            SectionHeadingPw(
              "${slForParent.serialNum} .",
              "Calculation of Cement Bags",
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "a. Mortar Volume = ${mortarVolume.toStringAsFixed(2)} cft",
                  ),
                  Text(
                    "b. Dry volume of mortar = ${dryVolumeOfMortar.toStringAsFixed(2)} cft",
                  ),
                  Text(
                    "c. Cement Volume = $cementVolume bags",
                  ),
                ],
              ),
            ),
            SectionHeadingPw(
              "${slForParent.serialNum} .",
              "Sand Volume Calculation",
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "a. The sand volume = $sandVolume cft",
                  ),
                ],
              ),
            ),
            SectionHeadingPw(
              "${slForParent.serialNum} .",
              "Summary of Calculation",
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Required materials for $quantity square feet brickwork -",
                  ),
                  Wrap(
                    children: [
                      Text(
                        "Brick: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${upperRoundTo(100, numberOfBricks)} Numbers",
                      ),
                    ],
                  ),
                  Wrap(
                    children: [
                      Text(
                        "Cement: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$cementVolume bags",
                      ),
                    ],
                  ),
                  Wrap(
                    children: [
                      Text(
                        "Sand: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$sandVolume cft",
                      ),
                    ],
                  ),
                ],
              ),
            )
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
        "$directory/Brick-wall${DateTime.now().millisecondsSinceEpoch}.pdf");
    await file.writeAsBytes(doc.save());
    Utility.showPrintedToast(ctx);
  }

  void sharePDF() async {
    var doc = Document();
    await generatePDF(doc);
    await Printing.sharePdf(bytes: doc.save(), filename: 'Brick-Wall.pdf');
  }
}
