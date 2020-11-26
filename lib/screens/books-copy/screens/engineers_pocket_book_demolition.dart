import 'package:flutter/material.dart';

import '../../../shared/widgets/book_button.dart';

class EngineersPocketBookDemolition extends StatelessWidget {
  String pdfLink(String name) => 'assets/pdfs/espbd/$name.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Engineers Supplimentary Pocket Book No 4 Demolition'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BookChapter('Chapter I : Explosives and Accessories'),
            BookButton(
              'Responsibilities',
              pdfLink('1. SERVICE EQUIPMENT'),
            ),
            BookButton(
              'Notes On The Preparation of Charges And Firing Circuits',
              pdfLink(
                  '2. NOTES ON THE PREPARATION OF CHARGES AND FIRING CIRCUITS'),
            ),
            BookButton(
              'HE Shells, Bombs And Mines As Demolition',
              pdfLink('3. HE SHELLS, BOMBS AND MINES AS DEMOLITION'),
            ),
            BookChapter('Chapter II : Estimation and Application of Charges'),
            BookButton(
              'General',
              pdfLink('4. GENERAL'),
            ),
            BookButton(
              'Hasty Calculations',
              pdfLink('5. HASTY CALCULATIONS'),
            ),
            BookButton(
              'Deliberate Calculations',
              pdfLink('6. DELIBERATE CALCUTIONS'),
            ),
            BookButton(
              'Tree Blasting',
              pdfLink('7. TREE BLASTING'),
            ),
            BookButton(
              'Explosive As Aids To Excavation And Ditching',
              pdfLink('8. EXPLOSIVE AS AIDS TO EXCAVATION AND DITCHING'),
            ),
            BookButton(
              'Rooting',
              pdfLink('9. ROOTING'),
            ),
            BookChapter('Chapter III : Demolition Procedure'),
            BookButton(
              'Miscellaneous Notes',
              pdfLink('10. MISCELLANEOUS NOTES'),
            ),
            BookButton(
              'Orders to the Commander, Demolition Firing Party (BAFU-03)',
              pdfLink(
                  '11. Order to the Commander, Demolition Firing Party (BAFU-03)'),
            ),
            BookButton(
              'Reconnaissance and Reports',
              pdfLink('12. RECONNAISSANCE AND REPORTS'),
            ),
            BookButton(
              'How to Attack Operational Targets',
              pdfLink('13. HOW TO ATTACK OPERATIONAL TARGETS'),
            ),
            BookButton(
              'How to Attack Industrial Targets',
              pdfLink('14. HOW TO ATTACK INDUSTRIAL TARGETS'),
            ),
            BookChapter('Chapter IV : Safety Precautions'),
            BookButton(
              'Preparation and Firing of Charges',
              pdfLink('15. PREPARATION AND FIRING OF CHARGES'),
            ),
            BookButton(
              'Storage and Transport',
              pdfLink('16. STORAGE AND TRANSPORT'),
            ),
          ],
        ),
      ),
    );
  }
}

class BookPart extends StatelessWidget {
  final String name;
  const BookPart(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(5),
      child: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
