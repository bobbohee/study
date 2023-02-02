// Mixin
// : 생성자가 없는 클래스
// : 상속을 할 때 with 키워드를 사용한다.
// - 클래스에 property 또는 method를 추가할 때 사용 (재사용)

class Strong {
  final double strenghtLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print("ruuuuuuuuuun!");
  }
}

class Tall {
  final double height = 1.99;
}

enum Team {red, blue}

// Mixin(with)을 이용하면 상속받을 필요가 없음!
class Player with Strong, QuickRunner, Tall {
  final Team team;

  Player({
    required this.team,
  });
}

class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

void main() {
  var player = Player(team: Team.red);
  player.runQuick();
}