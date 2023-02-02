class Player {
  String name;
  int xp;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var player = Player(name: "parkbohee", xp: 1200, team: "red");

  player.name = "las";
  player.xp = 1200000;
  player.team = "blue";

  player
  ..name = "las"
  ..xp = 1200000
  ..team = "blue";
}
