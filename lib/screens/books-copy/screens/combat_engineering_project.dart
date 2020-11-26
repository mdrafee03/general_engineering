import 'package:flutter/material.dart';

import '../../../shared/widgets/book_button.dart';

class CombatEngineeringProject extends StatelessWidget {
  String pdfLink(String name) => 'assets/pdfs/cep/$name.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Combat Engineering Project'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BookChapter('Chapter 1 : Mine Field'),
            BookButton(
              'Minefield Laying Calculation',
              pdfLink('1. MINEFIELD LAYING CALCULATION'),
            ),
            BookButton(
              'Minefield Breaching Calculation',
              pdfLink('2. MINEFIELD BREACHING CALCULATION'),
            ),
            BookChapter('Chapter 2 : Demolition of a Bridge'),
            BookButton(
              'Calculation for Reserve Demolition of a Bridge',
              pdfLink('3. CALCULATION FOR RESERVE DEMOLITION OF A BRIDGE'),
            ),
            BookChapter('Chapter 3 : Baily Bridge'),
            BookButton(
              'Design Calculation of Bailey Bridge',
              pdfLink('4. DESIGN CALCULATION OF BAILEY BRIDGE'),
            ),
            BookButton(
              'Determination of Composition of Floating Bridge',
              pdfLink('5. DETERMINATION OF COMPOSITION OF FLOATING BRIDGE'),
            ),
            BookButton(
              'Pontoon Raft Ferrying Calculation',
              pdfLink('6. PONTOON RAFT FERRYING CALCULATION'),
            ),
            BookChapter('Chapter 4 : Improvised Raft'),
            BookButton(
              'Buoyancy and Improvised Raft Design Calculation',
              pdfLink('7. BUOYANCY AND IMPROVISED RAFT DESIGN CALCULATION'),
            ),
            BookChapter('Chapter 5 : Field Machine'),
            BookButton(
              'Calculation of Anchorages',
              pdfLink('8. CALCULATION OF ANCHORAGES'),
            ),
            BookButton(
              'Calculation for Aerial Ropeway',
              pdfLink('9. CALCULATION FOR AERIAL ROPEWAY'),
            ),
            BookButton(
              'Field Machine',
              pdfLink('10. CALCULATIONS FOR DERRICK, SHEER AND GYN'),
            ),
            BookChapter('Chapter 6 : Field Defence and Obstacles'),
            BookButton(
              'Ready Reckoner for Wire Obstacle',
              pdfLink('11. READY RECKONER FOR WIRE OBSTACLE'),
            ),
            BookButton(
              'Calculation For Brigade Water Point',
              pdfLink('12. CALCULATION FOR BRIGADE WATER POINT'),
            ),
            BookChapter('Chapter 7 : Load Classification of Bridges'),
            BookButton(
              'Military Classification of Civil Bridge',
              pdfLink('13. MILITARY CLASSIFICATION OF CIVIL BRIDGE'),
            ),
            BookChapter('Chapter 8 : Format : Engineer Support Plan'),
            BookButton(
              'Engineer Annex of the Brigade Operational Order',
              pdfLink('14. ENGINEER ANNEX OF THE BRIGADE OPERATIONAL ORDER'),
            ),
            BookButton(
              'Format: Terrain Analysis Report',
              pdfLink('15. FORMAT TERRAIN ANALYSIS REPORT'),
            ),
            BookButton(
              'Format: Road Reconnaissance Report',
              pdfLink('16. FORMAT ROAD RECONNAISSANCE REPORT'),
            ),
            BookButton(
              'Format: Minefield Record',
              pdfLink('17. FORMAT MINEFIELD RECORD'),
            ),
            BookButton(
              'Format: Engineer Project',
              pdfLink('18. FORMAT ENGINEER PROJECT'),
            ),
            BookButton(
              'Format: An Engineer Project on Minefield Laying and Breaching',
              pdfLink(
                  '19. FORMAT AN ENGINEER PROJECT ON MINEFIELD LAYING AND BREACHING'),
            ),
            BookButton(
              'Format: An Engineer Project to Support an Infantry Brigade in its Occupation of Defence',
              pdfLink(
                  '20. FORMAT AN ENGRINEER PROJECT TO SUPPORT XXX INFANTARY BRIGADE IN ITSOCCUPATION OF DEFENCE'),
            ),
          ],
        ),
      ),
    );
  }
}

class BookChapter extends StatelessWidget {
  final String name;
  const BookChapter(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(left: 10, top: 15, bottom: 15),
      child: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      ),
    );
  }
}
