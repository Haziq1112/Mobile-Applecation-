void main() {
  int purchase = 100;
  String b = "Member";
  var c = (purchase >= 100 || b == "Member")? "eligible for a discount":"not-eligible for a discount";
  print("$c");
}
