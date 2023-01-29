String capitalizeName1(String? name) {
  if (name != null) {
    return name.toUpperCase();
  }
  return "ANON";
}

String capitalizeName2(String? name) =>
    name != null ? name.toUpperCase() : "ANON";

// ?? Operator (A ?? B)
// : A가 null이라면 B를 return. A가 null이 아니라면 A를 return
String capitalizeName3(String? name) =>
    name?.toUpperCase() ?? "ANON";

// ??= Operator (A ??= B)
// : A가 null이라면 B를 할당
void main() {
  String? name;
  name ??= "parkbohee";
  print(name);
}
