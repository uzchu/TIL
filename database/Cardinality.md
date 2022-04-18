# Cardinality(카디널리티)

> ''상대적인 개념''
>
> 전체 행에 대한 특정 칼럼의 중복수치를 나타내는 지표
>
> = 특정 데이터 집합의 유니크한 값의 갯수
>
> 중복도가 낮으면 카디널리티가 높고, 중복도가 높으면 카디널리티가 낮다
>
>   ex) 주민등록번호 같이 유니크한 값은 중복도가 낮으며, 카디널리티가 높음



- Example

  | id   | name | location |
  | ---- | ---- | -------- |
  | 0    | lee  | seoul    |
  | 1    | park | pusan    |
  | 2    | choi | seoul    |
  | 3    | park | seoul    |
  | 4    | kim  | seoul    |
  | 5    | bae  | incheon  |

  - id(6) > name(5) > location(3) 순으로 카디널리티가 높음
  - distinct값이 클수록 카디널리티가 높다고 생각 가능
  - **카디널리티는 객관적 수치보다는 상대적인 개념으로 이해해야함**



카디널리티는 인덱스 컬럼 선택 시, 중복도를 고려하기위한 참고용으로 사용하는 하나의 지표라고 생각하기



참고자료

- https://itholic.github.io/database-cardinality/