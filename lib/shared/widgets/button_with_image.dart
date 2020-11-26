import 'package:flutter/material.dart';

class ButtonWithImage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String routeName;
  const ButtonWithImage(this.imageUrl, this.title, this.routeName);

  @override
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        onPressed: () => Navigator.pushNamed(context, routeName),
        padding: const EdgeInsets.all(4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Theme.of(context).primaryColor,
        child: Container(
          width: 150,
          child: Column(
            children: [
              Image.asset(
                imageUrl,
              ),
              Text(
                title.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
