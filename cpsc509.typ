#let header(name, title, due) = [
  #text(14pt)[Name: #name #h(1fr) #title #h(1fr) Due: #due]
  #line(length: 100%)
]

#let question-count = counter("question")

#let question(body, solution, after: [], level: 1, empty: false) = {
  let question-numbering(..args) = {
    let num = args.pos()
    if num.len() == 1 [
      #num.at(0).
    ] else if num.len() == 2 [
      (#numbering("a", num.at(1)))
    ] else [
      FIXME: #numbering("1.a.i", ..num)
    ]
  }
  question-count.step(level: level)
  set list(marker: context question-count.display(question-numbering))
  list.item([
    #body

    #if not empty [
      _Solution._

      #solution
    ]

    #v(1fr)

    #after
  ])
}

#let pair(..xs) = [$chevron.l #xs.pos().join(", ") chevron.r$]

#let Char = smallcaps[Char]
#let RegExp = smallcaps[RegExp]
#let Term = smallcaps[Term]
#let Pgm = smallcaps[Pgm]
#let Value = smallcaps[Value]
#let ECtxt = smallcaps[ECtxt]
#let Redex = smallcaps[Redex]
#let Faulty = smallcaps[Faulty]
#let Error = smallcaps[Error]
#let Config = smallcaps[Config]
#let Obs = smallcaps[Obs]
#let Loc = smallcaps[Loc]
#let Store = smallcaps[Store]
#let Com = smallcaps[Com]
#let CCfg = smallcaps[CCfg]
#let BExp = smallcaps[BExp]
#let AExp = smallcaps[AExp]
#let Var = smallcaps[Var]

#let bigsteps = $arrow.b.double$
#let bigstep = $(bullet bigsteps bullet)$
#let rsteps = $arrow.squiggly med$
#let rstep = $(bullet rsteps bullet)$
#let ssteps = $arrow.long med$
#let sstep = $(bullet ssteps bullet)$
#let msteps = $ssteps #h(-0.25em) ast.basic med$
#let mstep = $(bullet msteps bullet)$
#let diverges = $arrow.t.double$
#let nsubst(x, y, t) = $[#x |=> #y]#t$
#let nsubstitution = $[bullet |=> bullet]bullet$
#let alphaeq = $attach(tilde, br: alpha)$
#let alepheq = $attach(approx, br: aleph)$

#let atom(name) = text(blue)[#name]
#let a0 = atom("0")
#let a1 = atom("1")
#let aplus = atom("+")
#let astar = atom("*")
#let atrue = atom("true")
#let afalse = atom("false")
#let aif = atom("if")
#let athen = atom("then")
#let aelse = atom("else")
#let ite(p, c, a) = $aif #p athen #c aelse #a$
#let asucc = atom("succ")
#let apred = atom("pred")
#let azeroq = atom("zero?")
#let awhile = atom("while")
#let ado = atom("do")
#let askip = atom("skip")
#let whiledo(cond, body) = $awhile #cond ado #body$
#let alambda = atom(sym.lambda)

#let error(name) = text(red)[#name]
#let emismatch = error("mismatch")
#let eunderflow = error("underflow")

#let juse = math.serif("use")
#let jverif = math.serif("verif")
#let jprop = math.serif("prop")
#let jset = math.serif("set")

#let hypU = "hypU"
#let atomic = "atomic"
#let topI = [$top$I]
#let botE = [$bot$E]
#let orI1 = [$or$I1]
#let orI2 = [$or$I2]
#let orE = [$or$E]
#let andI = [$and$I]
#let andE1 = [$and$E1]
#let andE2 = [$and$E2]
#let impI = [$=>$I]
#let impE = [$=>$E]
#let forallI = [$forall$I]
#let forallE = [$forall$E]
#let existsI = [$exists$I]
#let existsE = [$exists$E]
#let refl = "refl"
#let eq = "eq"
#let dd = "dd"
#let hypS = "hypS"
#let ddS = "ddS"
#let hypP = "hypP"
#let eqP = [$=$P]
#let inP = [$in$P]
#let topP = [$top$P]
#let botP = [$bot$P]
#let orP = [$or$P]
#let andP = [$and$P]
#let impP = [$=>$P]
#let forallP = [$forall$P]
#let existsP = [$exists$P]
#let st = $#h(0.24em) . #h(0.24em)$
