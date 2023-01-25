void main() {
  // Dart map == Javascript object == Python dictionary
  var player1 = {
    'name': 'parkbohee',
    'xp': 19.99,
    'superpower': false,
  };
  Map<String, Object> player2 = {
    'name': 'parkbohee',
    'xp': 19.99,
    'superpower': false,
  };
  Map<String, String> player3 = {
    'name': 'parkbohee',
    'xp': '19.99',
    'superpower': 'false',
  };
  Map<List<int>, bool> player4 = {
    [1, 2, 3, 4]: true,
  };
}