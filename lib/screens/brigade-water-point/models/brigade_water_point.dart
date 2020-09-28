import 'package:flutter/material.dart';

import '../../../shared/extension-methods/timeOfDay_apis.dart';
import '../models/brigade_group.dart';

class BrigadeWaterPoint {
  double length;
  double width;
  double depth1;
  double depth2;
  double depth3;
  double height;
  double dia;
  TimeOfDay startTime = TimeOfDay.now();
  int consumption;
  int numberOfEME;
  int numberOfMP;
  List<BrigadeGroup> brigadeGroups = BrigadeGroup.brigadeGroups;
  void updateBrigadeGroup() {
    var eme = brigadeGroups.where((element) => element.name == "EME");
    var mp = brigadeGroups.where((element) => element.name == "MP");
    if (numberOfEME != 0 && eme.isEmpty)
      brigadeGroups.add(BrigadeGroup(name: "EME", number: numberOfEME));
    if (numberOfMP != 0 && mp.isEmpty)
      brigadeGroups.add(BrigadeGroup(name: "MP", number: numberOfMP));
    if (numberOfEME == 0 && eme.isNotEmpty) {
      brigadeGroups.removeWhere((element) => element.name == "EME");
    }
    if (numberOfMP == 0 && mp.isNotEmpty) {
      brigadeGroups.removeWhere((element) => element.name == "MP");
    }
  }

  int get totalWaterAval {
    double depth = (depth1 + depth2 + depth3) / 3;
    return (length * width * depth * 6.23).ceil();
  }

  List<BrigadeGroup> get waterRequire {
    brigadeGroups.forEach((e) => e.waterRequire = e.number * consumption);
    return brigadeGroups;
  }

  int get totalWaterRequired {
    return brigadeGroups.fold(
        0, (previousValue, element) => previousValue + element.waterRequire);
  }

  int get provideWaterInDays {
    return (totalWaterAval / totalWaterRequired).floor();
  }

  int get yieldWaterTank {
    return (5 * height * dia * dia / 3).ceil();
  }

  List<BrigadeGroup> get timeRequire {
    brigadeGroups.forEach(
      (e) => e.timeRequire = (e.waterRequire / yieldWaterTank).ceil(),
    );
    return brigadeGroups;
  }

  List<BrigadeGroup> get runningTime {
    TimeOfDay current = startTime;
    brigadeGroups.forEach((e) {
      e.from = current;
      e.to = current.addMinutes(e.timeRequire);
      current = e.to;
    });
    return brigadeGroups;
  }

  String get totalTimeRequied {
    int time = brigadeGroups.fold(
        0, (previousValue, element) => previousValue + element.timeRequire);
    if (time > 60) {
      return "${time ~/ 60} hours ${time % 60} minutes";
    } else {
      return "$time minutes";
    }
  }

  String hourFormat(TimeOfDay time) {
    String hour = "00" + time.hour.toString();
    String minute = "00" + time.minute.toString();
    return (hour.substring(hour.length - 2) +
        minute.substring(minute.length - 2));
  }
}
