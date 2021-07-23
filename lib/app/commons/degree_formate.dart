class DegreeFormate {
  static String formateDegreeData(double tempIn) {
    double temp = tempIn / 10.0;
    return "${temp.toInt()}";
  }
}
