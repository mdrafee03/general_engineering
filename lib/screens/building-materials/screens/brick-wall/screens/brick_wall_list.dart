import 'package:flutter/material.dart';

import '../../../../../models/general_engineering.dart';
import '../../../../../router/route_const.dart';
import '../../../../../shared/widgets/list_builder.dart';
import '../models/brick_wall.dart';

class BrickWallList extends StatefulWidget {
  @override
  _BrickWallListState createState() => _BrickWallListState();
}

class _BrickWallListState extends State<BrickWallList> {
  final List<BrickWall> _listOfBrickWall =
      GeneralEngineering.buildingMaterial.listOfBrickWall;

  @override
  Widget build(BuildContext context) {
    return ListBuilder(
      args: BrickWall(),
      input: brickWallInput,
      list: _listOfBrickWall,
      output: brickWallOutput,
      title: "Brick Wall",
      onDelete: (int index) => setState(() => _listOfBrickWall.removeAt(index)),
    );
  }
}
