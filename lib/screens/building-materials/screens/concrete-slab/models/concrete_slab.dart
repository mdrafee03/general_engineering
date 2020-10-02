class ConcreteSlab {
  double length;
  double width;
  double thickness;
  double shrinkageFactor;
  double cementRatio;
  double faRatio;
  double caRatio;

  double get _sumOfRatio {
    return cementRatio + faRatio + caRatio;
  }

  int get volumeOfConcrete {
    return (length * width * thickness / 12 * shrinkageFactor).ceil();
  }

  int get cementRequired {
    return ((cementRatio / _sumOfRatio) * volumeOfConcrete / 1.25).ceil();
  }

  double get faValue {
    return (faRatio / _sumOfRatio) * volumeOfConcrete;
  }

  double get caValue {
    return (caRatio / _sumOfRatio) * volumeOfConcrete;
  }
}
