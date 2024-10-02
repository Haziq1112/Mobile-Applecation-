void main() {
  
  List<String> fruits = ['Apple', 'Banana', 'Cherry', 'Date'];

  
  print('Original list: $fruits');

  
  String removedFruit = fruits.removeAt(1);
  
  print('Removed fruit: $removedFruit');
  print('Updated list after removal: $fruits');
}