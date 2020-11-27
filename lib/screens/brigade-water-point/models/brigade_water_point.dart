import 'dart:io';
import 'package:flutter/material.dart' as m;
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:printing/printing.dart';

import '../../../shared/models/serial_manage.dart';
import '../../../shared/models/utility.dart';
import '../../../shared/models/utility_pw.dart';
import '../../../shared/widgets/section_heading_pw.dart';
import '../../../shared/widgets/section_sub_heading_pw.dart';
import '../../../shared/widgets/top_header_pw.dart';
import '../../../shared/extension-methods/timeOfDay_apis.dart';
import '../models/brigade_group.dart';

class BrigadeWaterPoint {
  double length;
  double width;
  double depth1;
  double depth2;
  double depth3;
  double height;
  double dia;
  m.TimeOfDay startTime = m.TimeOfDay.now();
  int consumption;
  int numberOfEME;
  int numberOfMP;
  int numberOfOther;
  List<BrigadeGroup> brigadeGroups = BrigadeGroup.brigadeGroups;
  void updateBrigadeGroup() {
    var eme = brigadeGroups.where((element) => element.name == "EME");
    var mp = brigadeGroups.where((element) => element.name == "MP");
    var other = brigadeGroups.where((element) => element.name == "Other");
    if (numberOfEME != 0 && eme.isEmpty)
      brigadeGroups.add(BrigadeGroup(name: "EME", number: numberOfEME));
    if (numberOfMP != 0 && mp.isEmpty)
      brigadeGroups.add(BrigadeGroup(name: "MP", number: numberOfMP));
    if (numberOfOther != 0 && other.isEmpty)
      brigadeGroups.add(BrigadeGroup(name: "Other", number: numberOfOther));
    if (numberOfEME == 0 && eme.isNotEmpty) {
      brigadeGroups.removeWhere((element) => element.name == "EME");
    }
    if (numberOfMP == 0 && mp.isNotEmpty) {
      brigadeGroups.removeWhere((element) => element.name == "MP");
    }
    if (numberOfOther == 0 && mp.isNotEmpty) {
      brigadeGroups.removeWhere((element) => element.name == "Other");
    }
  }

  int get totalWaterAval {
    double depth = (depth1 + depth2 + depth3) / 3;
    return (length * width * depth * 6.23).ceil();
  }

  List<BrigadeGroup> get waterRequire {
    brigadeGroups.forEach((e) => e.waterRequire = e.number * consumption);
    return brigadeGroups;
  }

  int get totalWaterRequired {
    return brigadeGroups.fold(
        0, (previousValue, element) => previousValue + element.waterRequire);
  }

  int get provideWaterInDays {
    return (totalWaterAval / totalWaterRequired).floor();
  }

  int get yieldWaterTank {
    return (5 * height * dia * dia / 3).ceil();
  }

  List<BrigadeGroup> get timeRequire {
    brigadeGroups.forEach(
      (e) => e.timeRequire = (e.waterRequire / yieldWaterTank).ceil(),
    );
    return brigadeGroups;
  }

  List<BrigadeGroup> get runningTime {
    m.TimeOfDay current = startTime;
    brigadeGroups.forEach((e) {
      e.from = current;
      e.to = current.addMinutes(e.timeRequire);
      current = e.to;
    });
    return brigadeGroups;
  }

  String get totalTimeRequied {
    int time = brigadeGroups.fold(
        0, (previousValue, element) => previousValue + element.timeRequire);
    if (time > 60) {
      return "${time ~/ 60} hours ${time % 60} minutes";
    } else {
      return "$time minutes";
    }
  }

  String hourFormat(m.TimeOfDay time) {
    String hour = "00" + time.hour.toString();
    String minute = "00" + time.minute.toString();
    return (hour.substring(hour.length - 2) +
        minute.substring(minute.length - 2));
  }

  Future<void> generatePDF(Document doc) async {
    final slForWater = SerialManage();
    final slForTime = SerialManage();
    Text buildItem(String text) {
      return Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      );
    }

    final PdfImage image = PdfImage.file(
      doc.document,
      bytes: (await rootBundle.load('assets/images/water-point.jpg'))
          .buffer
          .asUint8List(),
    );
    doc.addPage(
      MultiPage(
        pageFormat: PdfPageFormat.a4,
        build: (Context context) {
          return [
            TopHeaderPw('Summary of Brigade Water Point '),
            SectionHeadingPw(
              "",
              "Calculation",
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildItem(
                    "1. Total Water available in the source = $totalWaterAval gals",
                  ),
                  SectionSubHeadingPw(
                    "2. ",
                    "Total Water Require for Brigade Group",
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...waterRequire
                            .asMap()
                            .map(
                              (i, value) => MapEntry(
                                i,
                                Text(
                                  "${slForWater.serial}. ${value.name} = ${value.number} x $consumption = ${value.waterRequire} gals",
                                ),
                              ),
                            )
                            .values
                            .toList(),
                        Text(
                          "${slForWater.serial}. Total = $totalWaterRequired",
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildItem(
                    "3. Can Provides Water for = $provideWaterInDays Days",
                  ),
                  buildItem(
                    "4. Yield of the water tank = $yieldWaterTank gpm",
                  ),
                  SectionSubHeadingPw(
                    "5. ",
                    "Time Require for Different Units/Sub Units",
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...timeRequire
                            .asMap()
                            .map(
                              (i, value) => MapEntry(
                                i,
                                Text(
                                  "${slForTime.serial}. ${value.name} = ${value.timeRequire} mins",
                                ),
                              ),
                            )
                            .values
                            .toList(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionSubHeadingPw(
                    "6. ",
                    "Running Time",
                  ),
                  Table(
                    border: TableBorder(),
                    children: [
                      TableRow(children: [
                        UtilityPw.buildTableHeader("Unit"),
                        UtilityPw.buildTableHeader("from"),
                        UtilityPw.buildTableHeader("to"),
                      ]),
                      ...runningTime.map((unit) {
                        return TableRow(children: [
                          UtilityPw.buildTableCell(unit.name),
                          UtilityPw.buildTableCell(hourFormat(unit.from)),
                          UtilityPw.buildTableCell(hourFormat(unit.to)),
                        ]);
                      }).toList(),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: buildItem(
                      "7. Total Time Require = $totalTimeRequied",
                    ),
                  ),
                ],
              ),
            ),
            Image(image)
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
        "$directory/Brigade-water-point${DateTime.now().millisecondsSinceEpoch}.pdf");
    await file.writeAsBytes(doc.save());
    Utility.showPrintedToast(ctx);
  }

  void sharePDF() async {
    var doc = Document();
    await generatePDF(doc);
    await Printing.sharePdf(
        bytes: doc.save(), filename: 'Brigade-water-point.pdf');
  }
}
