import 'package:flutter/material.dart';

import '../../../../../models/general_engineering.dart';
import '../../../../../router/route_const.dart';
import '../../../../../shared/widgets/input_submit_button.dart';
import '../models/brick_wall.dart';

class BrickWallInput extends StatefulWidget {
  @override
  _BrickWallInputState createState() => _BrickWallInputState();
}

class _BrickWallInputState extends State<BrickWallInput> {
  final appBar = AppBar(
    title: Text('Brick Wall'),
  );

  final _formKey = GlobalKey<FormState>();
  Container buildRatioContainer(double property) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(border: Border.all()),
      child: TextFormField(
        keyboardType: TextInputType.number,
        initialValue: property.toString() ?? null,
        onSaved: (value) => setState(() => property = double.parse(value)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    BrickWall _model = ModalRoute.of(context).settings.arguments;
    void handleSubmit(BuildContext context) {
      final form = _formKey.currentState;
      form.save();
      var isEdit =
          GeneralEngineering.buildingMaterial.listOfBrickWall.contains(_model);
      if (isEdit == false) {
        GeneralEngineering.buildingMaterial.listOfBrickWall.add(_model);
      }
      Navigator.pushNamed(context, brickWallOutput, arguments: _model);
    }

    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Length", labelText: "Length (ft)"),
                  keyboardType: TextInputType.number,
                  initialValue: _model?.length?.toString() ?? null,
                  onSaved: (value) =>
                      setState(() => _model.length = double.parse(value)),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Width", labelText: "Width (ft)"),
                  keyboardType: TextInputType.number,
                  initialValue: _model?.width?.toString() ?? null,
                  onSaved: (value) =>
                      setState(() => _model.width = double.parse(value)),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Thickness", labelText: "Thickness (inch)"),
                  keyboardType: TextInputType.number,
                  initialValue: _model?.thickness?.toString() ?? null,
                  onSaved: (value) =>
                      setState(() => _model.thickness = double.parse(value)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    children: [
                      Text("Cement : Sand"),
                      SizedBox(width: 10),
                      buildRatioContainer(_model.cementRatio),
                      Text(" : "),
                      buildRatioContainer(_model.sandRatio),
                    ],
                  ),
                ),
                InputSubmitButton(handleSubmit),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
