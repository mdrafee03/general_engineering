import 'package:flutter/material.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:general_engineering/screens/brigade-water-point/models/brigade_group.dart';

import '../../../models/general_engineering.dart';
import '../../../router/route_const.dart';
import '../../../screens/brigade-water-point/models/brigade_water_point.dart';
import '../../../shared/widgets/input_submit_button.dart';

class BrigadeWaterPointInput extends StatefulWidget {
  @override
  _BrigadeWaterPointInputState createState() => _BrigadeWaterPointInputState();
}

class _BrigadeWaterPointInputState extends State<BrigadeWaterPointInput> {
  final appBar = AppBar(
    title: Text('Bridgade Water Point'),
  );

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    BrigadeWaterPoint _model = ModalRoute.of(context).settings.arguments;
    void handleSubmit(BuildContext context) {
      final form = _formKey.currentState;
      form.save();
      var isEdit = GeneralEngineering.listOfBrigadeWaterPoint.contains(_model);
      if (isEdit == false) {
        GeneralEngineering.listOfBrigadeWaterPoint.add(_model);
      }
      Navigator.pushNamed(context, brigadeWaterPointOutput, arguments: _model);
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
                      hintText: "Length of the water source",
                      labelText: "Length of the water source (ft)"),
                  keyboardType: TextInputType.number,
                  initialValue: _model?.length?.toString() ?? null,
                  onChanged: (value) =>
                      setState(() => _model.length = double.parse(value)),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Width of the water source",
                      labelText: "Width of the water source (ft)"),
                  keyboardType: TextInputType.number,
                  initialValue: _model?.width?.toString() ?? null,
                  onChanged: (value) =>
                      setState(() => _model.width = double.parse(value)),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Depth of the water source at point 1",
                      labelText: "Depth of the water source at point 1 (ft)"),
                  keyboardType: TextInputType.number,
                  initialValue: _model?.depth1?.toString() ?? null,
                  onChanged: (value) =>
                      setState(() => _model.depth1 = double.parse(value)),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Depth of the water source at point 2",
                      labelText: "Depth of the water source at point 2 (ft)"),
                  keyboardType: TextInputType.number,
                  initialValue: _model?.depth2?.toString() ?? null,
                  onChanged: (value) =>
                      setState(() => _model.depth2 = double.parse(value)),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Depth of the water source at point 3",
                      labelText: "Depth of the water source at point 3 (ft)"),
                  keyboardType: TextInputType.number,
                  initialValue: _model?.depth3?.toString() ?? null,
                  onChanged: (value) =>
                      setState(() => _model.depth3 = double.parse(value)),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Height of the water tank",
                      labelText: "Height of the water tank (ft)"),
                  keyboardType: TextInputType.number,
                  initialValue: _model?.height?.toString() ?? null,
                  onChanged: (value) =>
                      setState(() => _model.height = double.parse(value)),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Dia of the water tank",
                      labelText: "Dia of the water tank (ft)"),
                  keyboardType: TextInputType.number,
                  initialValue: _model?.dia?.toString() ?? null,
                  onChanged: (value) =>
                      setState(() => _model.dia = double.parse(value)),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Troops attached from EME",
                      labelText: "Troops attached from EME (Nos)"),
                  keyboardType: TextInputType.number,
                  initialValue: _model?.numberOfEME?.toString() ?? null,
                  onChanged: (value) =>
                      setState(() => _model.numberOfEME = int.parse(value)),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Troops attached from MP",
                      labelText: "Troops attached from MP (Nos)"),
                  keyboardType: TextInputType.number,
                  initialValue: _model?.numberOfMP?.toString() ?? null,
                  onChanged: (value) =>
                      setState(() => _model.numberOfMP = int.parse(value)),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Troops attached from Other Arms",
                      labelText: "Troops attached from Other Arms (Nos)"),
                  keyboardType: TextInputType.number,
                  initialValue: _model?.numberOfOther?.toString() ?? null,
                  onChanged: (value) =>
                      setState(() => _model.numberOfOther = int.parse(value)),
                ),
                ListTile(
                  title: Text(
                    "Start Time: ${_model.startTime.format(context)}",
                  ),
                  trailing: Icon(Icons.keyboard_arrow_down),
                  onTap: () async {
                    TimeOfDay t = await showTimePicker(
                      context: context,
                      initialTime: _model.startTime,
                    );
                    if (t != null) {
                      setState(() {
                        _model.startTime = t;
                      });
                    }
                  },
                ),
                DropDownFormField(
                  titleText: 'Purpose of supply water',
                  hintText: 'Purpose of supply water',
                  value: _model.consumption,
                  filled: false,
                  dataSource: [
                    {"display": "Temporary Camp", "value": 5},
                    {"display": "Semi-permanent Camp", "value": 15},
                    {"display": "Permanent Camp", "value": 20},
                  ],
                  onChanged: (int value) {
                    setState(() {
                      _model.consumption = value;
                    });
                  },
                  textField: 'display',
                  valueField: 'value',
                ),
                Wrap(
                  spacing: 10,
                  children: [
                    ..._model.selectedPriotityBgdGroup
                        .asMap()
                        .map(
                          (i, value) => MapEntry(
                              i,
                              InputChip(
                                label: Text(value.name),
                                onDeleted: () {
                                  setState(() {
                                    _model.selectedPriotityBgdGroup.removeAt(i);
                                  });
                                },
                              )),
                        )
                        .values
                        .toList(),
                  ],
                ),
                DropDownFormField(
                  titleText: 'Select Priority of Arms',
                  hintText: 'Select Priority of Arms',
                  filled: false,
                  dataSource: _model.brigadeGroups.map((e) {
                    return {"display": e.name, "value": e};
                  }).toList(),
                  onChanged: (BrigadeGroup value) {
                    setState(() {
                      print(value.name);
                      var found = _model.selectedPriotityBgdGroup
                          .where((element) => element.name == value.name);
                      if (found.isEmpty)
                        _model.selectedPriotityBgdGroup.add(value);
                    });
                  },
                  textField: 'display',
                  valueField: 'value',
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
