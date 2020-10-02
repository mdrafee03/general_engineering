class BrickWall {
  double length;
  double width;
  double thickness;
  double cementRatio;
  double sandRatio;

  final volumeOfABrick = 0.087;

  int get quantity {
    return (length * width).ceil();
  }

  int get volumeOfBrickwork {
    return (quantity * thickness / 12).ceil();
  }

  int get numberOfBricks {
    return (volumeOfBrickwork / volumeOfABrick).floor();
  }

  double get mortarVolume {
    double volumeOfBrick = numberOfBricks * 0.79 * 0.37 * 0.23;
    return volumeOfBrickwork - volumeOfBrick;
  }

  double get dryVolumeOfMortar {
    return mortarVolume * 1.30;
  }

  double get _sumOfRatio {
    return cementRatio + sandRatio;
  }

  int get cementVolume {
    return ((dryVolumeOfMortar / _sumOfRatio) * cementRatio / 1.25).ceil();
  }

  int get sandVolume {
    return ((dryVolumeOfMortar / _sumOfRatio) * sandRatio).ceil();
  }

  int upperRoundTo(int type, dynamic value) {
    return value % type != 0
        ? (value + type - (value % type)).round()
        : value.toInt();
  }
}
