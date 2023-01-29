// Named Parameter

// String sayHello1({String name, int age, String country}) {  Error! null safety
//   return "Hello $name, you are $age, and you come from $country";
// }

// null safety 해결 1: default value 지정
String sayHello2({String name = "anon", int age = 99, String country = "Wakanda"}) {
  return "Hello $name, you are $age, and you come from $country";
}

// null safety 해결 2: required 설정
String sayHello3({required String name, required int age, required String country}) {
  return "Hello $name, you are $age, and you come from $country";
}

void main() {
  // Named Argument (순서는 중요하지 X)
  print(sayHello2());  // Hello anon, you are 50, and you com from Wakanda
  print(sayHello3(
    age: 50,
    country: "Korea",
    name: "parkbohee",
  ));  // Hello parkbohee, you are 50, and you come from Korea
}