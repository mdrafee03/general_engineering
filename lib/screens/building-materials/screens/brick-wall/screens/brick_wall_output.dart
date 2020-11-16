import 'package:flutter/material.dart';

import '../../../../../router/route_const.dart';
import '../../../../../shared/models/serial_manage.dart';
import '../../../../../shared/widgets/section_heading.dart';
import '../../../../../shared/widgets/top_header.dart';
import '../models/brick_wall.dart';

class BrickWallOutput extends StatelessWidget {
  final slForParent = SerialManage();

  @override
  Widget build(BuildContext context) {
    final BrickWall _model = ModalRoute.of(context).settings.arguments;
    slForParent.reset();
    final AppBar appbar = new AppBar(
      title: Text('Brick Wall'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.list),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              brickWallList,
              ModalRoute.withName(buildingMaterialScreen),
            );
          },
        ),
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
              TopHeader('Summary of Estimation of Brick Wall '),
              SectionHeading(
                "${slForParent.serialNum} .",
                "Number of Bricks Calculation",
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "a. Quantity of Brickwork for the wall = ${_model.quantity} sq ft",
                    ),
                    Text(
                      "b. Volume of Estimated Brickwork = ${_model.volumeOfBrickwork} cft",
                    ),
                    Text(
                      "c. Number of bricks = ${_model.numberOfBricks} Nos",
                    ),
                  ],
                ),
              ),
              SectionHeading(
                "${slForParent.serialNum} .",
                "Calculation of Cement Bags",
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "a. Mortar Volume = ${_model.mortarVolume.toStringAsFixed(2)} cft",
                    ),
                    Text(
                      "b. Dry volume of mortar = ${_model.dryVolumeOfMortar.toStringAsFixed(2)} cft",
                    ),
                    Text(
                      "c. Cement Volume = ${_model.cementVolume} bags",
                    ),
                  ],
                ),
              ),
              SectionHeading(
                "${slForParent.serialNum} .",
                "Sand Volume Calculation",
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "a. The sand volume = ${_model.sandVolume} cft",
                    ),
                  ],
                ),
              ),
              SectionHeading(
                "${slForParent.serialNum} .",
                "Summary of Calculation",
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Required materials for ${_model.quantity} square feet brickwork -",
                    ),
                    Wrap(
                      children: [
                        Text(
                          "Brick: ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${_model.upperRoundTo(100, _model.numberOfBricks)} Numbers",
                        ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text(
                          "Cement: ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${_model.cementVolume} bags",
                        ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text(
                          "Sand: ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${_model.sandVolume} cft",
                        ),
                      ],
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
