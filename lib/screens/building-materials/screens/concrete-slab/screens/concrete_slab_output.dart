import 'package:flutter/material.dart';

import '../../../../../router/route_const.dart';
import '../../../../../shared/widgets/heading_output.dart';
import '../../../../../shared/widgets/section_heading.dart';
import '../models/concrete_slab.dart';

class ConcreteSlabOutput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ConcreteSlab _model = ModalRoute.of(context).settings.arguments;
    final AppBar appbar = new AppBar(
      title: Text('Concrete Slab'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.list),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              concreteSlabList,
              ModalRoute.withName(buildingMaterialScreen),
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
              HeadingOutput('Summary of Estimation of Concrete Slab'),
              SectionHeading(
                "1 .",
                "Basic Calculation",
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "a. Volume of concrete = ${_model.volumeOfConcrete} cft",
                    ),
                    Text(
                      "b. Cement Required = ${_model.cementRequired} bags",
                    ),
                    Text(
                      "c. Fine Aggregate Required = ${_model.faValue.toStringAsFixed(2)} cft",
                    ),
                    Text(
                      "d. Coarse Aggregate Required = ${_model.caValue.toStringAsFixed(2)} cft",
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
