class SerialManage {
  int _sl;
  SerialManage() {
    _sl = 0;
  }
  String get serial {
    _sl++;
    String current = String.fromCharCode(96 + _sl);
    if (current == "i") {
      _sl++;
      return String.fromCharCode(96 + _sl);
    } else {
      return current;
    }
  }

  int get serialNum {
    _sl++;
    return _sl;
  }

  void reset() {
    _sl = 0;
  }
}
