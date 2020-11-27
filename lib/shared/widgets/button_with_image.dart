import 'package:flutter/material.dart';

import '../../shared/models/book_button_model.dart';

class ButtonWithImage extends StatelessWidget {
  @override
  Widget build(context) {
    BookButtonModel _model = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(_model.title),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        child: RaisedButton(
          onPressed: () => Navigator.pushNamed(context, _model.routerName),
          padding: const EdgeInsets.all(4),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Theme.of(context).primaryColor,
          child: Image.asset(_model.imageUrl),
        ),
      ),
    );
  }
}
