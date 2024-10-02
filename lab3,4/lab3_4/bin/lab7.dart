void main() {
  // Initialize a map with key-value pairs
  Map<String, int> ages = {
    'Alice': 30,
    'Bob': 25,
    'Charlie': 28,
  };
  print('Ages map: $ages');
  int aliceAge = ages['Alice'] ?? 0; 
  print('Alice\'s age: $aliceAge');
}