// typedef
// : 자료형에 alias 부여
typedef ListOfInts = List<int>;

List<int> reverseListOfNumbers1(List<int> list) {
  var reversed = list.reversed;
  return reversed.toList();
}

ListOfInts reverseListOfNumbers2(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

void main() {
  print(reverseListOfNumbers2([1, 2, 3]));
}