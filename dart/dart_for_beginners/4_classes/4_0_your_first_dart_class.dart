class Player {
  String name = 'parkbohee';
  int xp = 1500;

  void sayHello() {
    print("Hi my name is $name");  // no this keyword
  }                                // 메소드 내의 변수와 이름이 중복되는 것이 아니라면 this를 사용하지 않는다
}

void main() {
  var player = Player();  // no new keyword
  player.sayHello();
}