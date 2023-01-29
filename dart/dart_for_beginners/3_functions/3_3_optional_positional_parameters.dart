// Optional Positional Parameter
// - Positional Parameter에서 default value를 지정하고 싶은 경우
String sayHello(String name, int age, [String? country = 'Korea']) =>
    "Hello $name, you are $age years old from $country";

void main() {
  print(sayHello("parkbohee", 50));
}
