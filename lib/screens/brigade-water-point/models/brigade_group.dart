import 'package:flutter/material.dart';

class BrigadeGroup {
  String name;
  int number;
  int waterRequire;
  int timeRequire;
  TimeOfDay from;
  TimeOfDay to;

  BrigadeGroup({
    this.name,
    this.number,
    this.waterRequire,
    this.timeRequire,
    this.from,
    this.to,
  });
  static List<BrigadeGroup> brigadeGroups = [
    BrigadeGroup(name: "Armr", number: 92),
    BrigadeGroup(name: "Arty", number: 510),
    BrigadeGroup(name: "Engr Coy", number: 209),
    BrigadeGroup(name: "Sig", number: 90),
    BrigadeGroup(name: "Inf", number: 739 * 3),
    BrigadeGroup(name: "ST Coy", number: 105),
    BrigadeGroup(name: "ADS", number: 25),
    BrigadeGroup(name: "Ord Pl", number: 27),
  ];
}
