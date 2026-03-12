#import "@preview/quick-maths:0.2.1": *

#show smallcaps: set text(font: "Libertinus Serif")

#let obl(name) = smallcaps[#name]
#let ol(s) = text(fill: blue)[#s]
#let op(s) = text(fill: blue, weight: "bold")[#s]
#let err(s) = text(fill: red)[#s]
#let boxed(body) = box(stroke: 0.8pt, inset: 0.4em, body)

#let uniq = $iota.inv$
#let st = $#h(0.24em) . #h(0.24em)$

#let mismatch = err("mismatch")
#let underflow = err("underflow")
#let unbound = err("unbound")
#let unhandled = err("unhandled")

#let finto = stack("fin", $harpoon.rt$)
#let pto = $harpoon.rt$
#let dto = stack("dens", $->$)
#let sugardef = $class("relation", : =)$
#let tuple(k) = $chevron.l k chevron.r$

#let setint = $inter$
#let setdiff = $class("relation", backslash)$
#let Pow = $cal(P)$
#let setfor = $class("binary", text(weight: "bold", "for"))$

#let lequiv = $class("large", "equiv")$
#let vdots = $dots.v$
#let ltrue = $top$

#show math.equation: shorthands.with(
  ($|-->$, $arrow.r.long.bar$),
  ($[]$, $square$),
  ($||$, $arrow.b$),
)

#let bigstep = $arrow.b.double$
#let dvgbs = $arrow.t.double$

#let sfaulty = obl("Faulty")
#let sconfig = obl("Config")
#let soutcome = obl("Obs")
#let sderiv = obl("Deriv")
#let sderivof = obl("DerivOf")
#let sstxtree = obl("StxTree")
#let sterm = obl("Term")
#let svalue = obl("Value")
#let svar = obl("Var")
#let srpgm = obl("RPgm")
#let spgm = obl("Pgm")
#let sobs = obl("Obs")
#let sframe = obl("Frame")
#let sectxt = obl("ECtxt")
#let sctxt = obl("Ctxt")
#let sredux = obl("Redux")
#let stype = obl("Type")
#let ssafe = obl("Safe")
#let serr = obl("Err")
#let sredex = obl("Redex")
#let sloc = obl("Loc")
#let sstore = obl("Store")
#let sstmt = obl("Stmt")

#let oplus = op("+")
#let ominus = op("+")
#let otimes = op($times$)
#let odiv = op($div$)

#let ttrue = ol("true")
#let tfalse = ol("false")
#let tif = ol("if")
#let tthen = ol("then")
#let telse = ol("else")
#let twhile = ol("while")
#let tdo = ol("do")
#let tskip = ol("skip")

#let tsucc(t) = ol("succ") + text()[(#t)]
#let tpred(t) = ol("pred") + text()[(#t)]
#let tzeroh(t) = ol("zero?") + text()[(#t)]

#let evalba = $op("eval")_"BA"$
#let evalbs = $op("eval")_"bs"$
#let evalss = $op("eval")_"ss"$
#let evalop = $op("eval")$
