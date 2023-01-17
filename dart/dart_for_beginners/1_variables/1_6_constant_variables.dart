void main() {
  // compile-time constant
  // 컴파일 시에 알고 있어야 하는 상수(변경할 수 없는 수)
  // 자바스크립트에 const와는 다름 (javascript const == dart final)

  const name1 = 'parkbohee';
  // name1 = 'bobbohee';        Error! 상수이기 때문에 수정 불가 (final과 동일)

  // const name2 = fetchAPI();  Error! 컴파일 시에는 값을 알 수 없음. 이런 경우 final로 선언되어야 함
}