void main() {
  // 변수 타입 정의 X
  // - 함수나 메소드 내부에 지역 변수를 선언할 떄
  var name1 = '박보희';
  // name = 1;  Error! 같은 타입(String)으로만 수정 가능

  // 변수 타입 정의 O
  // - class에서 변수나 property를 선언할 때
  String name2 = '박보희';
  name2 = 'parkbohee';
}