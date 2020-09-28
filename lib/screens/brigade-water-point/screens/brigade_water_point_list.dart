import 'package:flutter/material.dart';

import '../../../models/general_engineering.dart';
import '../../../router/route_const.dart';
import '../../../shared/widgets/list_builder.dart';
import '../models/brigade_water_point.dart';

class BrigadeWaterPointList extends StatefulWidget {
  @override
  _BrigadeWaterPointListState createState() => _BrigadeWaterPointListState();
}

class _BrigadeWaterPointListState extends State<BrigadeWaterPointList> {
  final List<BrigadeWaterPoint> _listOfBrigadeWaterPoint =
      GeneralEngineering.listOfBrigadeWaterPoint;

  @override
  Widget build(BuildContext context) {
    return ListBuilder(
      args: BrigadeWaterPoint(),
      input: brigadeWaterPointInput,
      list: _listOfBrigadeWaterPoint,
      output: brigadeWaterPointOutput,
      title: "Brigade Water Point",
      onDelete: (int index) =>
          setState(() => _listOfBrigadeWaterPoint.removeAt(index)),
    );
  }
}
