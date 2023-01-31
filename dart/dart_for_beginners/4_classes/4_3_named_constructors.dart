class Player {
  final String name;
  int xp, age;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  // :(콜론)을 사용해 Player 객체 초기화를 하겠다고 선언
  Player.createBluePlayer({required String name, required int age})
    : this.name = name,
      this.age = age,
      this.team = "blue",
      this.xp = 0;

  Player.createRedPlayer(String name, int age)
    : this.name = name,
      this.age = age,
      this.team = "red",
      this.xp = 0;

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var bluePlayer = Player.createBluePlayer(
    name: "parkbohee",
    age: 12,
  );
  var redPlayer = Player.createRedPlayer("bobbohee", 14);
}
