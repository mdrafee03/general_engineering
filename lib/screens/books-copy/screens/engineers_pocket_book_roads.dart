import 'package:flutter/material.dart';

import '../../../shared/widgets/book_button.dart';

class EngineersPocketBookRoads extends StatelessWidget {
  String pdfLink(String name) => 'assets/pdfs/espbr/$name';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Engineers Supplimentary Pocket Book No 5A Roads 1960'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BookChapter(
                'Chapter 1 : Principles of Design, Planning and Construction'),
            BookButton(
              'Basic Consideration',
              pdfLink('2. BASIC CONSIDERATION.pdf'),
            ),
            BookButton(
              'Road Capacity',
              pdfLink('3. ROAD CAPACITY.pdf'),
            ),
            BookButton(
              'Parts of a Road',
              pdfLink('4. PARTS OF A ROAD.pdf'),
            ),
            BookButton(
              'The Planning Sequence',
              pdfLink('5. THE PLANNING SEQUENCE.pdf'),
            ),
            BookChapter(
              'Chapter 2 :Principles of Design, Planning and Construction',
            ),
            BookButton(
              'Construction Priorities',
              pdfLink('6. CONSTRUCTION PRIORITIES.pdf'),
            ),
            BookButton(
              'Military Roads & Types',
              pdfLink('7. MILITARY ROADS & TYPES.pdf'),
            ),
            BookButton(
              'Tactical Roads and Tracks',
              pdfLink('8. TACTICAL ROADS AND TRACKS.pdf'),
            ),
            BookButton(
              'Strategical Roads',
              pdfLink('9. STRATEGICAL ROADS.pdf'),
            ),
            BookChapter('Chapter 3 : Road Standards'),
            BookButton(
              'Access Routes',
              pdfLink('10. ACCESS ROUTES.pdf'),
            ),
            BookButton(
              'Width',
              pdfLink('11. WIDTH.pdf'),
            ),
            BookButton(
              'Gradient',
              pdfLink('12. GRADIENT.pdf'),
            ),
            BookButton(
              'Camber and Crossfall',
              pdfLink('13. CAMBER AND CROSSFALL.pdf'),
            ),
            BookButton(
              'Superelevation',
              pdfLink('14. SUPERELEVATION.pdf'),
            ),
            BookButton(
              'Sight Distance',
              pdfLink('15. SIGHT DISTANCE.pdf'),
            ),
            BookButton(
              'Horizontal Curves',
              pdfLink('16. HORIZONTAL CURVES.pdf'),
            ),
            BookButton(
              'Vertical Curves',
              pdfLink('17. VERTICAL CURVES.pdf'),
            ),
            BookChapter('Chapter 4 : Geological Considerations'),
            BookButton(
              'Junctions',
              pdfLink('18. JUNCTIONS.pdf'),
            ),
            BookButton(
              'Inclinations of Strata',
              pdfLink('19. INCLINATIONS OF STRATA.pdf'),
            ),
            BookButton(
              'Water Bearing Strata',
              pdfLink('20. WATER BEARING STRATA.pdf'),
            ),
            BookButton(
              'Dangerous Features',
              pdfLink('21. DANGEROUS FEATURES.pdf'),
            ),
            BookChapter('Chapter 5 : Drainage Design'),
            BookButton(
              'Roadstone',
              pdfLink('22. ROADSTONE.pdf'),
            ),
            BookButton(
              'General',
              pdfLink('23. GENERAL.pdf'),
            ),
            BookButton(
              'Computation of Required Capacity',
              pdfLink('24. COMPUTATION OF REQUIRED CAPACITY.pdf'),
            ),
            BookChapter('Chapter 6 : Earthwork Planning'),
            BookButton(
              'Design of Pipe Drains and Open Channel',
              pdfLink('25. DESIGN OF PIPE DRAINS AND OPEN CHANNEL.pdf'),
            ),
            BookButton(
              'General',
              pdfLink('26. GENERAL.pdf'),
            ),
            BookButton(
              'Design of Cuttings',
              pdfLink('26. DESIGN OF CUTTINGS.pdf'),
            ),
            BookButton(
              'Design of Embankments',
              pdfLink('27. DESIGN OF EMBANKMENTS.pdf'),
            ),
            BookButton(
              'Computation of Quantities',
              pdfLink('28. COMPUTATION OF QUANTITIES.pdf'),
            ),
            BookButton(
              'Materials Quantities and Movement',
              pdfLink('29. MATERIALS QUANTITIES AND MOVEMENT.pdf'),
            ),
            BookButton(
              'Miscellaneous Tasks',
              pdfLink('30. MISCELLANEOUS TASKS.pdf'),
            ),
            BookChapter('Chapter 7 : Soil Mechanics and Pavment Desings'),
            BookButton(
              'General',
              pdfLink('31. GENERAL.pdf'),
            ),
            BookButton(
              'Soil Tests and Soil Samples',
              pdfLink('32. SOIL TESTS AND SOIL SAMPLES.pdf'),
            ),
            BookButton(
              'Pavement Design General',
              pdfLink('33. PAVEMENT DESIGN GENERAL.pdf'),
            ),
            BookButton(
              'Design of Flexible Pavements',
              pdfLink('34. DESIGN OF FLEXIBLE PAVEMENTS.pdf'),
            ),
            BookButton(
              'Design of Rigid Pavements',
              pdfLink('35. DESIGN OF RIGID PAVEMENTS.pdf'),
            ),
            BookChapter('Chapter 8 : Reconnaissance of Existing Roads'),
            BookButton(
              'Road and Route Classification',
              pdfLink('36. ROAD AND ROUTE CLASSIFICATION.pdf'),
            ),
            BookButton(
              'Tactical Road Reconnaissance',
              pdfLink('37. TACTICAL ROAD RECONNAISSANCE.pdf'),
            ),
            BookButton(
              'Technical Road Reconnaissance',
              pdfLink('38. TECHNICAL ROAD RECONNAISSANCE.pdf'),
            ),
            BookButton(
              'Periodic Maintenance Reconnaissance',
              pdfLink('39. PERIODIC MAINTENANCE RECONNAISSANCE.pdf'),
            ),
            BookChapter(
                'Chapter 9 : Planning and Reconnaissance for New Roads'),
            BookButton(
              'Factors to Be Considered',
              pdfLink('40. FACTORS TO BE CONSIDERED.pdf'),
            ),
            BookButton(
              'The Detailed Planning Sequence',
              pdfLink('41. THE DETAILED PLANNING SEQUENCE.pdf'),
            ),
            BookButton(
              'Primary Selcetion of Route',
              pdfLink('42. PRIMARY SELCETION OF ROUTE.pdf'),
            ),
            BookButton(
              'Location Reconnaissance',
              pdfLink('43. LOCATION RECONNAISSANCE.pdf'),
            ),
            BookChapter('Chapter 10 : Survey and Field Location'),
            BookButton(
              'Survey During Reconnaissance',
              pdfLink('44. SURVEY DURING RECONNAISSANCE.pdf'),
            ),
            BookButton(
              'Preliminary Survey',
              pdfLink('45. PRELIMINARY SURVEY.pdf'),
            ),
            BookButton(
              'Paper Location',
              pdfLink('46. PAPER LOCATION.pdf'),
            ),
            BookButton(
              'Line Location',
              pdfLink('47. LINE LOCATION.pdf'),
            ),
            BookButton(
              'Field Location',
              pdfLink('48. FIELD LOCATION.pdf'),
            ),
            BookChapter('Chapter 11 : Setting Out'),
            BookButton(
              'Setting-out',
              pdfLink('49. SETTING-OUT.pdf'),
            ),
            BookButton(
              'Organization',
              pdfLink('50. ORGANIZATION.pdf'),
            ),
            BookButton(
              'Location Marking Pegs and Profiles',
              pdfLink('51. LOCATION MARKING PEGS AND PROFILES.pdf'),
            ),
            BookButton(
              'Setting Out Tangents',
              pdfLink('52. SETTING OUT TANGENTS.pdf'),
            ),
            BookButton(
              'Setting Out Horizontal Curves',
              pdfLink('53. SETTING OUT HORIZONTAL CURVES.pdf'),
            ),
            BookButton(
              'Levelling and Vertical Curves',
              pdfLink('54. LEVELLING AND VERTICAL CURVES.pdf'),
            ),
            BookChapter('Chapter 12 : Clearing and Stripping'),
            BookButton(
              'Methods of Clearing',
              pdfLink('55. METHODS OF CLEARING.pdf'),
            ),
            BookButton(
              'Clearing Rates',
              pdfLink('56. CLEARING RATES.pdf'),
            ),
            BookButton(
              'Grubbing',
              pdfLink('57. GRUBBING.pdf'),
            ),
            BookButton(
              'Top Soil Stripping',
              pdfLink('58. TOP SOIL STRIPPING.pdf'),
            ),
            BookButton(
              'Organization',
              pdfLink('59. ORGANIZATION.pdf'),
            ),
            BookChapter('Chapter 13 : Preparing the Formation'),
            BookButton(
              'Earth Movement and Drainage',
              pdfLink('60. EARTH MOVEMENT AND DRAINAGE.pdf'),
            ),
            BookButton(
              'Construction Work',
              pdfLink('61. CONSTRUCTION WORK.pdf'),
            ),
            BookButton(
              'Excavation of Cuttings',
              pdfLink('62. EXCAVATION OF CUTTINGS.pdf'),
            ),
            BookButton(
              'Building Embankments',
              pdfLink('63. BUILDING EMBANKMENTS.pdf'),
            ),
            BookButton(
              'Construction in Swamps',
              pdfLink('64. CONSTRUCTION IN SWAMPS.pdf'),
            ),
            BookButton(
              'Subgrade Treatment',
              pdfLink('65. SUBGRADE TREATMENT.pdf'),
            ),
            BookButton(
              'Weed Killing',
              pdfLink('66. WEED KILLING.pdf'),
            ),
            BookChapter('Chapter 14 : Drainage Construction'),
            BookButton(
              'Lateral Drainage',
              pdfLink('67. LATERAL DRAINAGE.pdf'),
            ),
            BookButton(
              'Catchwater and Cut-of Drains',
              pdfLink('68. CATCHWATER AND CUT-OF DRAINS.pdf'),
            ),
            BookButton(
              'Subgrade and Subsoil Drains',
              pdfLink('69. SUBGRADE AND SUBSOIL DRAINS.pdf'),
            ),
            BookChapter('Chapter 15 : Pavement Construction General'),
            BookButton(
              'Components and Functions',
              pdfLink('70. COMPONENTS AND FUNCTIONS.pdf'),
            ),
            BookButton(
              'Type Designs',
              pdfLink('71. TYPE DESIGNS.pdf'),
            ),
            BookButton(
              'Pavements Quantitles',
              pdfLink('72. PAVEMENTS QUANTITLES.pdf'),
            ),
            BookChapter('Chapter 16 : Flexible Pavement Design'),
            BookButton(
              'Introduction',
              pdfLink('73. INTRODUCTION.pdf'),
            ),
            BookButton(
              'Elements of a Flexible Pavement',
              pdfLink('74. ELEMENTS OF A FLEXIBLE PAVEMENT.pdf'),
            ),
            BookButton(
              'Load-carrying Requirements of a Flexible Pavement',
              pdfLink(
                  '75. LOAD-CARRYING REQUIREMENTS OF A FLEXIBLE PAVEMENT.pdf'),
            ),
            BookButton(
              'Causes of Structural Failure',
              pdfLink('76. CAUSES OF STRUCTURAL FAILURE.pdf'),
            ),
            BookButton(
              'Design of Flexible Pavement',
              pdfLink('77. DESIGN OF FLEXIBLE PAVEMENT.pdf'),
            ),
            BookChapter('Chapter 17 : Dases and Sub-bases'),
            BookButton(
              'Types of Base and Sub-base',
              pdfLink('78. TYPES OF BASE AND SUB-BASE.pdf'),
            ),
            BookButton(
              'Construction Procedure',
              pdfLink('79. CONSTRUCTION PROCEDURE.pdf'),
            ),
            BookChapter('Chapter 18 : Surfacing'),
            BookButton(
              'Requirenents',
              pdfLink('80. REQUIRENENTS.pdf'),
            ),
            BookButton(
              'Types of Sufacing',
              pdfLink('81. TYPES OF SUFACING.pdf'),
            ),
            BookButton(
              'Area of Road Surfaces',
              pdfLink('82. AREA OF ROAD SURFACES.pdf'),
            ),
            BookChapter('Chapter 19 : Natural and Stabilized'),
            BookButton(
              'Cross Country Tracks and Detours',
              pdfLink('83. CROSS COUNTRY TRACKS AND DETOURS.pdf'),
            ),
            BookButton(
              'Earth Roads',
              pdfLink('84. EARTH ROADS.pdf'),
            ),
            BookButton(
              'Sand-clay Roads',
              pdfLink('85. SAND-CLAY ROADS.pdf'),
            ),
            BookButton(
              'Soil Stabilization',
              pdfLink('86. SOIL STABILIZATION.pdf'),
            ),
            BookChapter('Chapter 20 : Gravel and Macadam Construction'),
            BookButton(
              'Gravel Roads and Bases',
              pdfLink('87. GRAVEL ROADS AND BASES.pdf'),
            ),
            BookButton(
              'Macadam',
              pdfLink('88. MACADAM.pdf'),
            ),
            BookChapter('Chapter 21 : Bituminous Construction Material'),
            BookButton(
              'General',
              pdfLink('89. GENERAL.pdf'),
            ),
            BookButton(
              'Aggregates and Fillers',
              pdfLink('90. AGGREGATES AND FILLERS.pdf'),
            ),
            BookButton(
              'Bitumen, Tar, and Road Oil',
              pdfLink('91. BITUMEN, TAR, AND ROAD OIL.pdf'),
            ),
            BookButton(
              'Field Tests of Bituminous Binders',
              pdfLink('92. FIELD TESTS OF BITUMINOUS BINDERS.pdf'),
            ),
            BookChapter('Chapter 22 : Bituminous Construction Materials'),
            BookButton(
              'General',
              pdfLink('93. GENERAL.pdf'),
            ),
            BookButton(
              'Surface Dressing',
              pdfLink('94. SURFACE DRESSING.pdf'),
            ),
            BookButton(
              'Bituminous Groting (Penetration Macadam)',
              pdfLink('95. BITUMINOUS GROTING (PENETRATION MACADAM).pdf'),
            ),
            BookButton(
              'Premix',
              pdfLink('96. PREMIX.pdf'),
            ),
            BookButton(
              'Bituminous Sand Mixes',
              pdfLink('97. BITUMINOUS SAND MIXES.pdf'),
            ),
            BookButton(
              'Tools and Plant',
              pdfLink('98. TOOLS AND PLANT.pdf'),
            ),
            BookButton(
              'Weights, Measures, and Quantites',
              pdfLink('99. WEIGHTS, MEASURES, AND QUANTITES.pdf'),
            ),
            BookChapter('Chapter 23 : Concrete and Cement Bound Construction'),
            BookButton(
              'Pavement Quality Concrete Slabs',
              pdfLink('100. PAVEMENT QUALITY CONCRETE SLABS.pdf'),
            ),
            BookButton(
              'Jonts in Concrete Road Slabs',
              pdfLink('101. JONTS IN CONCRETE ROAD SLABS.pdf'),
            ),
            BookButton(
              'Concrete Road-making Plant',
              pdfLink('102. CONCRETE ROAD-MAKING PLANT.pdf'),
            ),
            BookButton(
              'Cement Grouting',
              pdfLink('103. CEMENT GROUTING.pdf'),
            ),
            BookButton(
              'Cement –boundmacadam',
              pdfLink('104. CEMENT –BOUNDMACADAM.pdf'),
            ),
            BookButton(
              'Lean Mix Rolled Concrete',
              pdfLink('105. LEAN MIX ROLLED CONCRETE.pdf'),
            ),
            BookButton(
              'Soil Cement',
              pdfLink('106. SOIL CEMENT.pdf'),
            ),
            BookChapter('Chapter 24 : Plant Labour and Organization of Work'),
            BookButton(
              'Earth Moving Plant and Transport',
              pdfLink('107. EARTH MOVING PLANT AND TRANSPORT.pdf'),
            ),
            BookButton(
              'Road Making Plant',
              pdfLink('108. ROAD MAKING PLANT.pdf'),
            ),
            BookButton(
              'Hand Labour',
              pdfLink('109. HAND LABOUR.pdf'),
            ),
            BookButton(
              'Genral Organization',
              pdfLink('110. GENRAL ORGANIZATION.pdf'),
            ),
            BookChapter('Chapter 25 : Expedients'),
            BookButton(
              'Emergency Surfaces',
              pdfLink('111. EMERGENCY SURFACES.pdf'),
            ),
            BookButton(
              'Timber Roads and Mats',
              pdfLink('112. TIMBER ROADS AND MATS.pdf'),
            ),
            BookButton(
              'Prefabricated Bituminous Surface',
              pdfLink('113. PREFABRICATED BITUMINOUS SURFACE.pdf'),
            ),
            BookButton(
              'Prefabricated Metal Tracks',
              pdfLink('114. PREFABRICATED METAL TRACKS.pdf'),
            ),
            BookButton(
              'Geosynthetics',
              pdfLink('115. GEOSYNTHETICS.pdf'),
            ),
            BookButton(
              'Beach Roadways',
              pdfLink('116. BEACH ROADWAYS.pdf'),
            ),
            BookButton(
              'Improvised Swamp Crossing',
              pdfLink('117. IMPROVISED SWAMP CROSSING.pdf'),
            ),
            BookChapter('Chapter 26 : Road Widening and Improvement'),
            BookButton(
              'General',
              pdfLink('118. GENERAL.pdf'),
            ),
            BookButton(
              'Structural Improvements',
              pdfLink('119. STRUCTURAL IMPROVEMENTS.pdf'),
            ),
            BookButton(
              'Improvement in Alignment and Dimensions',
              pdfLink('120. IMPROVEMENT IN ALIGNMENT AND DIMENSIONS.pdf'),
            ),
            BookButton(
              'Principles of Road Widening',
              pdfLink('121. PRINCIPLES OF ROAD WIDENING.pdf'),
            ),
            BookButton(
              'Methods of Widening',
              pdfLink('122. METHODS OF WIDENING.pdf'),
            ),
            BookChapter('Chapter 27 : Road Mainenance and Repairs'),
            BookButton(
              'Principles and Prioritles',
              pdfLink('123. PRINCIPLES AND PRIORITLES.pdf'),
            ),
            BookButton(
              'Organization',
              pdfLink('124. ORGANIZATION.pdf'),
            ),
            BookButton(
              'Common Defects',
              pdfLink('125. COMMON DEFECTS.pdf'),
            ),
            BookButton(
              'Structural Repalrs',
              pdfLink('126. STRUCTURAL REPALRS.pdf'),
            ),
            BookButton(
              'Repair of Craters',
              pdfLink('127. REPAIR OF CRATERS.pdf'),
            ),
            BookButton(
              'Winter Precautions',
              pdfLink('128. WINTER PRECAUTIONS.pdf'),
            ),
            BookChapter('Chapter 28 : Road Maintenance and Repairs'),
            BookButton(
              'Retaining Walls',
              pdfLink('129. RETAINING WALLS.pdf'),
            ),
            BookButton(
              'Culverts',
              pdfLink('130. CULVERTS.pdf'),
            ),
            BookButton(
              'Irish Bridges, Causeways, and Fords',
              pdfLink('131. IRISH BRIDGES, CAUSEWAYS, AND FORDS.pdf'),
            ),
            BookButton(
              'Approaches to Bridges and Culverts',
              pdfLink('132. APPROACHES TO BRIDGES AND CULVERTS.pdf'),
            ),
            BookButton(
              'Slipways and Landing Hards',
              pdfLink('133. SLIPWAYS AND LANDING HARDS.pdf'),
            ),
            BookButton(
              'Tank Routes and Hard Standings',
              pdfLink('134. TANK ROUTES AND HARD STANDINGS.pdf'),
            ),
            BookButton(
              'Paved Surfaces',
              pdfLink('135. PAVED SURFACES.pdf'),
            ),
            BookChapter('Chapter 30 : Mountain Roads and Tracks'),
            BookButton(
              'Drainage',
              pdfLink('136. DRAINAGE.pdf'),
            ),
            BookButton(
              'Principles of Location',
              pdfLink('137. PRINCIPLES OF LOCATION.pdf'),
            ),
            BookButton(
              'Construction Sequence',
              pdfLink('138. CONSTRUCTION SEQUENCE.pdf'),
            ),
            BookChapter('Chapter 31 : Construction in Cold Climates'),
            BookButton(
              'Snow Roads',
              pdfLink('139. SNOW ROADS.pdf'),
            ),
            BookButton(
              'Ice Routes',
              pdfLink('140. ICE ROUTES.pdf'),
            ),
            BookButton(
              'Permafrost Zone in Summer',
              pdfLink('141. PERMAFROST ZONE IN SUMMER.pdf'),
            ),
            BookButton(
              'Arctic Working Conditions',
              pdfLink('142. ARCTIC WORKING CONDITIONS.pdf'),
            ),
            BookChapter('Chapter 32 : Use of Special Materials'),
            BookButton(
              'General',
              pdfLink('143. GENERAL.pdf'),
            ),
            BookButton(
              'Caliche and Havara',
              pdfLink('144. CALICHE AND HAVARA.pdf'),
            ),
            BookButton(
              'Laterite',
              pdfLink('145. LATERITE.pdf'),
            ),
            BookButton(
              'Coral',
              pdfLink('146. CORAL.pdf'),
            ),
            BookButton(
              'Chalk',
              pdfLink('147. CHALK.pdf'),
            ),
            BookButton(
              'Tuff',
              pdfLink('148. TUFF.pdf'),
            ),
            BookButton(
              'Slag',
              pdfLink('149. SLAG.pdf'),
            ),
            BookButton(
              'Sand',
              pdfLink('150. SAND.pdf'),
            ),
            BookChapter('Chapter 33 : Work Analysis'),
            BookButton(
              'Estimates',
              pdfLink('151.  ESTIMATES.pdf'),
            ),
            BookButton(
              'Job Tables and Work Programmes',
              pdfLink('152. JOB TABLES AND WORK PROGRAMMES.pdf'),
            ),
            BookButton(
              'Plant and Labour Schedules',
              pdfLink('153. PLANT AND LABOUR SCHEDULES.pdf'),
            ),
            BookButton(
              'Records',
              pdfLink('154. RECORDS.pdf'),
            ),
            BookChapter('Chapter 39 : Road Construction-bd Perspective'),
            BookButton(
              'General',
              pdfLink('155. GENERAL.pdf'),
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
