// void: 아무것도 return 하지 않음을 의미
void sayHello(String name) {
  print("Hello $name nice to meet you!");
}

String sayBye(String name) {
  return "Bye $name, see you later!";
}

num plus(num a, num b) => a + b;

void main() {
  sayHello('parkbohee');
  print(sayBye('parkbohee'));
  print(plus(2, 4));
}