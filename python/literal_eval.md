# literal_eval

AST(Abstract Syntax Tree) 모듈 내 함수

> list,dict 등 형식 데이터가 csv파일 read할 때 문자열로 바뀌어서 불려지는 오류발생했을 때 사용
>
> ex) [1,2,3,4] => "[1,2,3,4]"



```python
import ast
ast.literal_eval(x)

from ast import literal_eval
literal_eval(x)
```

- Example

```python
a = "[1,2,3,4]"
a = literal_eval(a)
a = [1,2,3,4]
```

- 참고자료
  - https://stackoverflow.com/questions/23111990/pandas-dataframe-stored-list-as-string-how-to-convert-back-to-list#

