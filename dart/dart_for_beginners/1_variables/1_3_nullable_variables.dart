void main() {
  // Without null safety:
  //   null safety가 없는 이전 버전에서 컴파일 상황에서 에러가 발생하지 않고, 사용자 상황에서 발생
  // bool isEmpty(String string) => string.length == 0
  // main() {
  //   isEmpty(null);
  // }

  // 기본적으로 모든 변수는 nullable
  String name1 = 'parkbohee';
  // name1 = null;  Error!

  // name2가 null이 될 수 있음을 명시
  String? name2 = 'partbohee';
  name2 = null;

  // name2가 null이 아니아면 name2.length 실행
  // 방법1
  if (name2 != null) {
    name2.length;
  }
  // 방법2
  name2?.length;
}