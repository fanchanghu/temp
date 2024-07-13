
Name: [A-Za-z][A-Za-z0-9]*

General: [=<>]+

Element: Name|
  '{'  '}'|
  '{' Elements '}'|
  '(' Elements ')'

Elements: Element|
  Element ',' Element

DefKey: Name |
  Name '*' |
  

Defination: Name ':=' Element
  


