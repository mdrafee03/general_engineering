import 'package:flutter/material.dart';

import '../../../shared/widgets/book_button.dart';

class BombReconnaissance extends StatelessWidget {
  String pdfLink(String name) => 'assets/pdfs/bomb-reconnaissance/$name.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Bomb Reconnaissance and Protection Against Unexploded Bombs'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BookPart('Part I : All Arms'),
            BookChapter('Chapter I : Responsibilities'),
            BookButton(
              'Responsibilities',
              pdfLink('1. RESPONSIBILITIES'),
            ),
            BookChapter('Chapter II : Design of High Explosive Bombs'),
            BookButton(
              'All Arms Responsibilities',
              pdfLink('2. ALL ARMS RESPONSIBILITIES'),
            ),
            BookButton(
              'General',
              pdfLink('3. GENERAL'),
            ),
            BookButton(
              'Construction',
              pdfLink('4. CONSTRUCTION'),
            ),
            BookChapter('Chapter III : Reconnaissance for Unexploded He Bombs'),
            BookButton(
              'The Main Filling and the Exploder System',
              pdfLink('5. THE MAIN FILLING AND THE EXPLODER SYSTEM'),
            ),
            BookButton(
              'Fuzes',
              pdfLink('6. FUZES'),
            ),
            BookButton(
              'Types of High Explosive Bombs and Their Probable Fuzing',
              pdfLink('7. TYPES OF HIGH EXPLOSIVE BOMBS AND'),
            ),
            BookButton(
              'Conclusions',
              pdfLink('8. CONCLUSIONS'),
            ),
            BookButton(
              'Preamble',
              pdfLink('9. PREAMBLE'),
            ),
            BookButton(
              'Preamble',
              pdfLink('10. BLAST'),
            ),
            BookButton(
              'Bomb Splinters',
              pdfLink('11. BOMB SPLINTERS'),
            ),
            BookButton(
              'Earth Shock',
              pdfLink('12. EARTH SHOCK'),
            ),
            BookButton(
              'Craters',
              pdfLink('13. CRATERS'),
            ),
            BookButton(
              'Camouflets',
              pdfLink('14. CAMOUFLETS'),
            ),
            BookButton(
              ' Other Indications of Explosion',
              pdfLink('15. OTHER INDICATIONS OF EXPLOSION'),
            ),
            BookButton(
              'Unexploded Bombs on the Surface',
              pdfLink('16. UNEXPLODED BOMBS ON THE SURFACE'),
            ),
            BookButton(
              'Entry Holes',
              pdfLink('17. ENTRY HOLES'),
            ),
            BookButton(
              'Buildings Struck by Bombs Which Fail to Explode',
              pdfLink('18. BUILDINGS STRUCK BY BOMBS WHICH'),
            ),
            BookButton(
              'Secondary Debris and Secondary Splinters',
              pdfLink('19. SECONDARY DEBRIS AND SECONDARY SPLINTERS'),
            ),
            BookButton(
              'Identification of Bombs by Fragments',
              pdfLink('20. IDENTIFICATION OF BOMBS BY FRAGMENTS'),
            ),
            BookButton(
              'Summary',
              pdfLink('21. SUMMARY'),
            ),
            BookChapter(
                'Chapter IV : What to Do When a Uxb Has Been Discovered'),
            BookButton(
              'Introductory',
              pdfLink('22. INTRODUCTORY'),
            ),
            BookButton(
              'Evacuation',
              pdfLink('23. EVACUATION'),
            ),
            BookButton(
              'Protective Works',
              pdfLink('24. PROTECTIVE WORKS'),
            ),
            BookButton(
              'Reporting',
              pdfLink('25. REPORTING'),
            ),
            BookButton(
              'Priorities',
              pdfLink('25-A PRIORITIES'),
            ),
            BookChapter('Chapter V : Miscellaneous Air-warfare Missiles'),
            BookButton(
              'General',
              pdfLink('26. GENERAL'),
            ),
            BookButton(
              'Guided Missiles',
              pdfLink('27. GUIDED MISSILES'),
            ),
            BookButton(
              'Flying Bombs',
              pdfLink('28. FLYING BOMBS'),
            ),
            BookButton(
              'Long Range Rockets',
              pdfLink('29. LONG RANGE ROCKETS'),
            ),
            BookButton(
              'Rocket Propelled Ammunition',
              pdfLink('30. ROCKET PROPELLED AMMUNITION'),
            ),
            BookButton(
              'Incendiary Bombs Combustible Cased Incendiaries',
              pdfLink(''),
            ),
            BookButton(
              'Gas Bombs',
              pdfLink('31. INCENDIARY BOMBS COMBUSTIBLE CASED INCENDIARIES'),
            ),
            BookButton(
              'Containers',
              pdfLink('32. GAS BOMBS'),
            ),
            BookButton(
              'Pyrotechnics',
              pdfLink('34. PYROTECHNICS'),
            ),
            BookButton(
              'Sea Mines',
              pdfLink('35. SEA MINES'),
            ),
            BookButton(
              'AA Shells',
              pdfLink('36. AA SHELLS'),
            ),
            BookButton(
              'Aeroplane Cannon Shells',
              pdfLink('37. AEROPLANE CANNON SHELLS'),
            ),
            BookChapter(
              'Chapter VI : Small Anti-personnel Bombs Searching and Disposal',
            ),
            BookButton(
              'The Problem and Responsibilities',
              pdfLink('38. THE PROBLEM AND RESPONSIBILITIES'),
            ),
            BookButton(
              'Searching',
              pdfLink('39. SEARCHING'),
            ),
            BookButton(
              'Protective Works and Disposal',
              pdfLink('40. PROTECTIVE WORKS AND DISPOSAL'),
            ),
            BookPart('Part II : Engineers'),
            BookChapter(
              'Chapter VII : Engineer Reconnaissance',
            ),
            BookButton(
              'Checking the Report',
              pdfLink('41. CHECKING THE REPORT'),
            ),
            BookButton(
              'Disposal requirement of an Unexploded bomb',
              pdfLink('42. DISPOSAL REQUIREMENT OF AN UNEXPLODED BOMB'),
            ),
            BookButton(
              'Estimating the Position of a Buried UXB',
              pdfLink('43. ESTIMATING THE POSITION OF A BURIED UXB'),
            ),
            BookButton(
              'Locating a Buried Bomb (II)',
              pdfLink('44. LOCATING A BURIED BOMB (II)'),
            ),
            BookChapter(
              'Chapter VII : Gaining Access to Burried Bombs',
            ),
            BookButton(
              'Shafting',
              pdfLink('45. SHAFTING.docx'),
            ),
            BookButton(
              'Headings',
              pdfLink('46. HEADINGS'),
            ),
            BookChapter(
              'Chapter IX : Final Disposal',
            ),
            BookButton(
              'Demolition',
              pdfLink('47. DEMOLITION'),
            ),
            BookButton(
              'Disposal Other than by Demolition',
              pdfLink('48. DISPOSAL OTHER THAN BY DEMOLITION'),
            ),
            BookButton(
              'A. Bomb Disposal Policy',
              pdfLink('Ser-48-1Anx'),
            ),
            BookButton(
              'B. Disposal Of Stray Ammunition',
              pdfLink('Ser-48-2 Appx-B (DISPOSAL OF STRAY AMMUNITION)'),
            ),
            BookButton(
              'C. Disposal of HE Bombs In Dumps',
              pdfLink('Ser-48-2 Appx-C (DISPOSAL OF HE BOMBS IN DUMPS)'),
            ),
            BookButton(
              'D. Standard Bomb Disposal Shafts',
              pdfLink('Ser-48-2 Appx-D (STANDARD BOMB DISPOSAL SHAFTS)'),
            ),
            BookButton(
              'E. Constructing a Standard Heading',
              pdfLink('Ser-48-2 Appx-E (CONSTRUCTING A STANDARD HEADING)'),
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
