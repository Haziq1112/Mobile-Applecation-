void main() {
  String a = "subc";
  String? c;
  if (a == "subc") {
    c = "permoted";
  } else {
    c = "not promoted";
  }
  print("$c");
}
