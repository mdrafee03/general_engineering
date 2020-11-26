import 'package:flutter/material.dart';

import '../../../router/route_const.dart';
import '../../../shared/widgets/background_container.dart';
import '../../../shared/widgets/button_with_image.dart';

class BooksCopyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books Copy'),
      ),
      body: Stack(
        children: [
          BackgroundContainer(),
          SingleChildScrollView(
            child: Center(
              child: Wrap(
                children: [
                  ButtonWithImage(
                    'assets/images/bomb-reconnaissance.jpg',
                    'Bomb Reconnaissance and Protection Against Unexploded Bombs',
                    bombReconnaissance,
                  ),
                  ButtonWithImage(
                    'assets/images/cep.jpg',
                    'Combat Engineering Project',
                    combatEngineeringProject,
                  ),
                  ButtonWithImage(
                    'assets/images/espbd.jpg',
                    'Engineers Supplimentary Pocket Book No 4 Demolition',
                    engineeringPocketBookDemolition,
                  ),
                  ButtonWithImage(
                    'assets/images/espbr.jpg',
                    'Engineers Supplimentary Pocket Book No 5A Roads 1960',
                    engineeringPocketBookRoads,
                  ),
                  ButtonWithImage(
                    'assets/images/handbook.jpg',
                    'Professional Handbook : Engineers',
                    handBook,
                  ),
                  // SizedBox(height: 10),
                  // Button(
                  //   context,
                  //   combatEngineeringProject,
                  // ),
                  // SizedBox(height: 10),
                  // Button(
                  //   context,
                  //   engineeringPocketBookDemolition,
                  // ),
                  // SizedBox(height: 10),
                  // Button(
                  //   context,
                  //   engineeringPocketBookRoads,
                  // ),
                  // SizedBox(height: 10),
                  // Button(
                  //   context,
                  //   handBook,
                  // ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
