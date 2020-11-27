import 'package:flutter/material.dart';
import 'package:general_engineering/shared/widgets/button_with_image.dart';

import '../screens/brigade-water-point/screens/brigade_water_point_input.dart';
import '../screens/brigade-water-point/screens/brigade_water_point_list.dart';
import '../screens/brigade-water-point/screens/brigade_water_point_output.dart';
import '../screens/airstip-construction/airstrip_construction_screen.dart';
import '../screens/helipad-construction/helipad_construction_screen.dart';
import '../screens/home.dart';
import '../screens/building-materials/screens/brick-wall/screens/brick_wall_input.dart';
import '../screens/building-materials/screens/brick-wall/screens/brick_wall_list.dart';
import '../screens/building-materials/screens/brick-wall/screens/brick_wall_output.dart';
import '../screens/building-materials/screens/building_material_screen.dart';
import '../screens/building-materials/screens/concrete-slab/screens/concrete_slab_input.dart';
import '../screens/building-materials/screens/concrete-slab/screens/concrete_slab_list.dart';
import '../screens/building-materials/screens/concrete-slab/screens/concrete_slab_output.dart';
import '../screens/plant-vehicle/plant_vehicle_screen.dart';
import '../screens/books-copy/screens/books_copy_screen.dart';
import '../shared/widgets/pdf_viewer.dart';
import '../screens/books-copy/screens/bomb_reconnaissance.dart';
import '../screens/books-copy/screens/combat_engineering_project.dart';
import '../screens/books-copy/screens/engineers_pocket_book_demolition.dart';
import '../screens/books-copy/screens/engineers_pocket_book_roads.dart';
import '../screens/books-copy/screens/handbook.dart';
import './route_const.dart';

class Router {
  static Map<String, WidgetBuilder> mainRouter() {
    return <String, WidgetBuilder>{
      home: (BuildContext ctx) => Home(),
      pdfViewer: (BuildContext ctx) => PdfViewer(),
      bookCover: (BuildContext ctx) => ButtonWithImage(),
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
      plantVehicleCapability: (BuildContext ctx) => PlantVehicleScreeen(),
      booksCopy: (BuildContext ctx) => BooksCopyScreen(),
      bombReconnaissance: (BuildContext ctx) => BombReconnaissance(),
      combatEngineeringProject: (BuildContext ctx) =>
          CombatEngineeringProject(),
      engineeringPocketBookDemolition: (BuildContext ctx) =>
          EngineersPocketBookDemolition(),
      engineeringPocketBookRoads: (BuildContext ctx) =>
          EngineersPocketBookRoads(),
      handBook: (BuildContext ctx) => HandBook(),
    };
  }
}
