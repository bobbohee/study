class Player1 {
  // late로 나중에 값을 받아온다고 선언. late가 없으면 Error 발생
  late final String name;
  late int xp;

  Player1(String name, int xp) {  // constructor 메소드의 이름은 class 이름과 같아야 한다
    this.name = name;
    this.xp = xp;
  }

  void sayHello() {
    print("Hi my name is $name");
  }
}

class Player2 {
  final String name;
  int xp;

  Player2(this.name, this.xp);

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var player1 = Player1("parkbohee", 20);
  var player2 = Player2("bobbohee", 50);
  player1.sayHello();
  player2.sayHello();
}