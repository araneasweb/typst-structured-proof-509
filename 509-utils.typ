#let hw-title(num, due, name) = [
  #grid(
    columns: (1fr, auto, 1fr),
    column-gutter: 1em,
    [Name: #name],
    [#align(center)[CPSC 509 Homework #num]],
    [#align(right)[Due: #due]],
  )
  #v(0.35em)
  #rect(width: 100%, height: 0.6pt, fill: black, stroke: none)
]
