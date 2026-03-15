#let trans-colors = (
  rgb("#5BCEFA"),
  rgb("#F5A9B8"),
  rgb("#FFFFFF"),
  rgb("#F5A9B8"),
  rgb("#5BCEFA"),
)
#let trans-gradient = gradient.linear(
  ..trans-colors.map(col => col.darken(25%)),
  dir: ttb,
)
#let transify(content) = {
  set text(fill: trans-gradient.sharp(5))
  box(content)
}
