void main() {
  // Dart set == Python tuple
  // Set은 모든 요소가 unique 하다.
  var numbers1 = {1, 2, 3, 4, 5};
  Set<int> numbers2 = {1, 2, 3, 4, 5};

  numbers1.add(1);
  print(numbers1);  // {1, 2, 3, 4, 5}
}