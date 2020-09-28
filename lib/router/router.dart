import 'package:flutter/material.dart';

import '../screens/brigade-water-point/screens/brigade_water_point_input.dart';
import '../screens/brigade-water-point/screens/brigade_water_point_list.dart';
import '../screens/brigade-water-point/screens/brigade_water_point_output.dart';
import '../screens/helipad-construction/screens/airstrip_construction_screen.dart';
import '../screens/airstip-construction/screens/helipad_construction_screen.dart';
import '../screens/home.dart';
import './route_const.dart';

class Router {
  static Map<String, WidgetBuilder> mainRouter() {
    return <String, WidgetBuilder>{
      home: (BuildContext ctx) => Home(),
      airstripConstruction: (BuildContext ctx) => AirstripConstructionScreeen(),
      helipadConstruction: (BuildContext ctx) => HelipadConstructionScreeen(),
      brigadeWaterPointList: (BuildContext ctx) => BrigadeWaterPointList(),
      brigadeWaterPointInput: (BuildContext ctx) => BrigadeWaterPointInput(),
      brigadeWaterPointOutput: (BuildContext ctx) => BrigadeWaterPointOutput(),
    };
  }
}
