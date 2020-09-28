import 'package:flutter/material.dart';

import '../../../router/route_const.dart';
import '../../../shared/models/serial_manage.dart';
import '../../../shared/widgets/heading_output.dart';
import '../../../shared/widgets/section_heading.dart';
import '../../../shared/widgets/section_sub_heading.dart';
import '../models/brigade_water_point.dart';

class BrigadeWaterPointOutput extends StatelessWidget {
  final slForParent = SerialManage();
  final slForWater = SerialManage();
  final slForTime = SerialManage();

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
        )
      ],
    );
    return Scaffold(
      appBar: appbar,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              HeadingOutput('Summary of Brigade Water Point '),
              SectionHeading(
                "${slForParent.serialNum} .",
                "Calculation",
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
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
                                    "${slForWater.serial}. ${value.name} = ${value.waterRequire} gals",
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
                    Text(
                      "3. Can Provides Water for = ${_model.provideWaterInDays} Days",
                    ),
                    Text(
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
                          buildTableHeader("Unit"),
                          buildTableHeader("from"),
                          buildTableHeader("to"),
                        ]),
                        ..._model.runningTime.map((unit) {
                          return TableRow(children: [
                            TableCell(
                              child: Text(unit.name),
                            ),
                            TableCell(
                              child: Text(_model.hourFormat(unit.from)),
                            ),
                            TableCell(
                              child: Text(_model.hourFormat(unit.to)),
                            ),
                          ]);
                        }).toList(),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "7. Total Time Require = ${_model.totalTimeRequied}",
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
}
