#let _block_spacing = 0.6em

#let Proof = smallcaps[Proof]
#let Assume = smallcaps[Assume]
#let Prove = smallcaps[Prove]
#let Suffices = smallcaps[Suffices]
#let Let = smallcaps[Let]
#let Case = smallcaps[Case]
#let Pick = smallcaps[Pick]
#let New = smallcaps[New]
#let Claim = smallcaps[Claim]

#let omitted = [_Proof Omitted_]
#let qed = [Q.E.D.]

#let stepkind(kind, content, level: 1, spacer: [:]) = {
  set enum(full: false)
  block(
    breakable: false,
    spacing: _block_spacing,
    stack(
      dir: ltr,
      spacing: 0.25em,
      kind,
      spacer,
      content,
    ),
  )
}

#let proof(body) = block(spacing: _block_spacing)[
  #Proof.
  #body
]

#let assume(content) = stepkind(Assume, content)
#let prove(content) = stepkind(Prove, content)
#let suffices(content) = stepkind(Suffices, content)
#let pick(content) = stepkind(Pick, content)
#let claim(content) = stepkind(Claim, content)
#let step(num, content) = stepkind([#num], content, spacer: [.])

#let by = "by"
#let intros = smallcaps[INTROS]
