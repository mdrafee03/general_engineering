import 'package:flutter/material.dart';

import '../screens/brigade-water-point/screens/brigade_water_point_input.dart';
import '../screens/brigade-water-point/screens/brigade_water_point_list.dart';
import '../screens/brigade-water-point/screens/brigade_water_point_output.dart';
import '../screens/helipad-construction/screens/airstrip_construction_screen.dart';
import '../screens/airstip-construction/screens/helipad_construction_screen.dart';
import '../screens/home.dart';
import '../screens/building-materials/screens/brick-wall/screens/brick_wall_input.dart';
import '../screens/building-materials/screens/brick-wall/screens/brick_wall_list.dart';
import '../screens/building-materials/screens/brick-wall/screens/brick_wall_output.dart';
import '../screens/building-materials/screens/building_material_screen.dart';
import '../screens/building-materials/screens/concrete-slab/screens/concrete_slab_input.dart';
import '../screens/building-materials/screens/concrete-slab/screens/concrete_slab_list.dart';
import '../screens/building-materials/screens/concrete-slab/screens/concrete_slab_output.dart';
import '../screens/building-materials/screens/earth-work-excavation/screens/earth_work_excavation_screen.dart';
import '../screens/building-materials/screens/rcc-slab/screens/rcc_slab_screen.dart';
import '../screens/building-materials/screens/residential-building/screens/residential_building_screen.dart';
import '../screens/building-materials/screens/retaining-wall/screens/retaining_wall_screen.dart';
import '../screens/building-materials/screens/septic-tank/screens/septic_tank_screen.dart';
import '../screens/building-materials/screens/underground-water-reservior/screens/underground_water_reservior_screen.dart';
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
      // building Material
      buildingMaterialScreen: (BuildContext ctx) => BuildingMaterialScreen(),
      brickWallList: (BuildContext ctx) => BrickWallList(),
      brickWallInput: (BuildContext ctx) => BrickWallInput(),
      brickWallOutput: (BuildContext ctx) => BrickWallOutput(),
      concreteSlabList: (BuildContext ctx) => ConcreteSlabList(),
      concreteSlabInput: (BuildContext ctx) => ConcreteSlabInput(),
      concreteSlabOutput: (BuildContext ctx) => ConcreteSlabOutput(),
      rccSlab: (BuildContext ctx) => RCCSlabScreen(),
      retainingWall: (BuildContext ctx) => RetainingWallScreen(),
      septicTank: (BuildContext ctx) => SepticTankScreen(),
      undergroundWaterReservior: (BuildContext ctx) =>
          UndergroundWaterReserviorScreen(),
      residentialBuilding: (BuildContext ctx) => ResidentialBuildingScreen(),
      earthWorkExcavation: (BuildContext ctx) => EarthWorkExcavationScreen(),
    };
  }
}
