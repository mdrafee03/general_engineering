import 'package:flutter/material.dart';

import '../../../router/route_const.dart';
import '../../../shared/models/book_button_model.dart';
import '../../../shared/widgets/background_container.dart';
import '../../../shared/widgets/button_with_argument.dart';

class BooksCopyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books Copy'),
      ),
      body: BackgroundContainer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ButtonWithArgument(
                'Bomb Reconnaissance and Protection Against Unexploded Bombs',
                bookCover,
                BookButtonModel(
                  bombReconnaissance,
                  'assets/images/bomb-reconnaissance.jpg',
                  'Bomb Reconnaissance and Protection Against Unexploded Bombs',
                ),
              ),
              SizedBox(height: 10),
              ButtonWithArgument(
                'Combat Engineering Project',
                bookCover,
                BookButtonModel(
                  combatEngineeringProject,
                  'assets/images/cep.jpg',
                  'Combat Engineering Project',
                ),
              ),
              SizedBox(height: 10),
              ButtonWithArgument(
                'Engineers Supplimentary Pocket Book No 4 Demolition',
                bookCover,
                BookButtonModel(
                  engineeringPocketBookDemolition,
                  'assets/images/espbd.jpg',
                  'Engineers Supplimentary Pocket Book No 4 Demolition',
                ),
              ),
              SizedBox(height: 10),
              ButtonWithArgument(
                'Engineers Supplimentary Pocket Book No 5A Roads 1960',
                bookCover,
                BookButtonModel(
                  engineeringPocketBookRoads,
                  'assets/images/espbr.jpg',
                  'Engineers Supplimentary Pocket Book No 5A Roads 1960',
                ),
              ),
              SizedBox(height: 10),
              ButtonWithArgument(
                'Professional Handbook : Engineers',
                bookCover,
                BookButtonModel(
                  handBook,
                  'assets/images/handbook.jpg',
                  'Professional Handbook : Engineers',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
