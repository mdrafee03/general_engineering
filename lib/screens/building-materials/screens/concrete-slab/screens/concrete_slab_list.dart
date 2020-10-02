import 'package:flutter/material.dart';

import '../../../../../models/general_engineering.dart';
import '../../../../../router/route_const.dart';
import '../../../../../shared/widgets/list_builder.dart';
import '../models/concrete_slab.dart';

class ConcreteSlabList extends StatefulWidget {
  @override
  _ConcreteSlabListState createState() => _ConcreteSlabListState();
}

class _ConcreteSlabListState extends State<ConcreteSlabList> {
  final List<ConcreteSlab> _listOfConcreteSlab =
      GeneralEngineering.buildingMaterial.listOfConcreteSlab;

  @override
  Widget build(BuildContext context) {
    return ListBuilder(
      args: ConcreteSlab(),
      input: concreteSlabInput,
      list: _listOfConcreteSlab,
      output: concreteSlabOutput,
      title: "Concrete Slab",
      onDelete: (int index) =>
          setState(() => _listOfConcreteSlab.removeAt(index)),
    );
  }
}
