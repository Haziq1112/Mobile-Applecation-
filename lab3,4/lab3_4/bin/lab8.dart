void main() {
  Map<String, int> scores = {
    'Alice': 90,
    'Bob': 85,
  };
  print('Original scores map: $scores');
  scores['Charlie'] = 92;
  print('Updated scores map after adding Charlie: $scores');
}