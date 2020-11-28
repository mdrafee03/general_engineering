import 'dart:io';

import 'package:flutter/material.dart';

import '../../../shared/models/serial_manage.dart';
import '../../../shared/models/utility.dart';
import '../../../router/route_const.dart';
import '../../../shared/widgets/section_heading.dart';
import '../../../shared/widgets/section_sub_heading.dart';
import '../../../shared/widgets/top_header.dart';
import '../models/brigade_water_point.dart';

class BrigadeWaterPointOutput extends StatelessWidget {
  final slForParent = SerialManage();
  final slForWater = SerialManage();
  final slForTime = SerialManage();

  Text buildItem(String text) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }

  TableCell buildTableHeader(String title) {
    return TableCell(
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final BrigadeWaterPoint _model = ModalRoute.of(context).settings.arguments;
    _model.updateBrigadeGroup();
    slForParent.reset();
    slForWater.reset();
    slForTime.reset();
    final AppBar appbar = new AppBar(
      title: Text('Brigade Water Point'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.list),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              brigadeWaterPointList,
              ModalRoute.withName(home),
            );
          },
        ),
        if (Platform.isAndroid)
          Builder(builder: (BuildContext ctx) {
            return IconButton(
              icon: const Icon(Icons.file_download),
              onPressed: () => _model.savePDF(ctx),
            );
          }),
        IconButton(
          icon: const Icon(Icons.share),
          onPressed: () => _model.sharePDF(),
        ),
      ],
    );
    return Scaffold(
      appBar: appbar,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              TopHeader('Summary of Brigade Water Point '),
              SectionHeading(
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
                      "1. Total Water available in the source = ${_model.totalWaterAval} gals",
                    ),
                    SectionSubHeading(
                      "2. ",
                      "Total Water Require for Brigade Group",
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ..._model.waterRequire
                              .asMap()
                              .map(
                                (i, value) => MapEntry(
                                  i,
                                  Text(
                                    "${slForWater.serial}. ${value.name} = ${value.number} x ${_model.consumption} = ${value.waterRequire} gals",
                                  ),
                                ),
                              )
                              .values
                              .toList(),
                          Text(
                            "${slForWater.serial}. Total = ${_model.totalWaterRequired}",
                          )
                        ],
                      ),
                    ),
                    buildItem(
                      "3. Can Provides Water for = ${_model.provideWaterInDays} Days",
                    ),
                    buildItem(
                      "4. Yield of the water tank = ${_model.yieldWaterTank} gpm",
                    ),
                    SectionSubHeading(
                      "5. ",
                      "Time Require for Different Units/Sub Units",
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ..._model.timeRequire
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
                    SectionSubHeading(
                      "6. ",
                      "Running Time",
                    ),
                    Table(
                      border: TableBorder.all(),
                      children: [
                        TableRow(children: [
                          Utility.buildTableHeader("Unit"),
                          Utility.buildTableHeader("from"),
                          Utility.buildTableHeader("to"),
                        ]),
                        ..._model.runningTime.map((unit) {
                          return TableRow(children: [
                            Utility.buildTableCell(unit.name),
                            Utility.buildTableCell(
                                _model.hourFormat(unit.from)),
                            Utility.buildTableCell(_model.hourFormat(unit.to)),
                          ]);
                        }).toList(),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: buildItem(
                        "7. Total Time Require = ${_model.totalTimeRequied}",
                      ),
                    ),
                    Image.asset(
                      'assets/images/water-point.jpg',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
