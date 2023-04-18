String removeDecimalZeroFormat(double n) {
  return n.toStringAsFixed(n.truncateToDouble() == n ? 0 : 1);
}

String padLeft2Zero (int n) {
  return n.toString().padLeft(2, "0");
}