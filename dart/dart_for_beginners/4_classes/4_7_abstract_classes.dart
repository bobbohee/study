abstract class Human {
  // 메소드명과 return 타입만 지정
  void walk();
}

enum Team {red, blue}
enum XPLevel {beginner, medium, pro}

class Player extends Human {
  String name;
  XPLevel xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void walk() {
    print("I'm walking!");
  }

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var player = Player(name: "parkbohee", xp: XPLevel.medium, team: Team.red);

  player.name = "las";
  player.xp = XPLevel.pro;
  player.team = Team.blue;

  player
    ..name = "las"
    ..xp = XPLevel.pro
    ..team = Team.blue;
}
