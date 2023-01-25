void main() {
  var numbers1 = [1, 2, 3, 4, 5];
  List<int> numbers2 = [1, 2, 3, 4, 5];
  // numbers1.add('String')  Error!

  // collection if
  var giveMeFive = true;
  var numbers3 = [1, 2, 3, 4, if (giveMeFive) 5];
}