#import "@preview/ctheorems:1.1.3": *
// macros.typ

#import "@preview/feyndrawgram:1.0.0": feyndrawgram


#import "@preview/physica:0.9.8": *

//#import "@preview/inknertia:0.1.0": feynman
//#import feynman: *

//#import "@preview/showybox:2.0.4": showybox
#import "@preview/mannot:0.2.2": markrect

#import "@preview/colorful-boxes:1.4.3":*
//#let ket(x) = $|#x chevron.r$
//#let bra(x) = $chevron.l #x|$

#let feynman(body) = math.cancel(angle: 15deg, body)

custom function `feynman`: $feynman(x)$

#let munu = $mu nu$

#let pphi = $phi.alt$
#let lag = $cal(L)$

#let diff(x,y) = $(dif^#x #y)/(2 pi)^#x$


#let ddelta(x,y) = $(2 pi)^#x op(delta^#x)(#y)$

#let proof = thmproof("proof","Proof")
#let theorem = thmbox("theorem", "Theorem", fill: rgb("#e8f8f5"))
#let definition = thmbox("definition", "Definition", fill: rgb("#fcf3cf"))
#let note = thmbox("note", "Note", stroke: (left: 3pt + rgb("#e67e22")), inset: (x: 10pt, y: 5pt)).with(numbering: none)
#let physics = thmbox("physics", "Principle", fill: rgb("#ebf5fb"))

#let example = thmbox("example","Example")

#let rules(title,body) = slanted-colorbox(
  title:title,
  color: "red",
  radius: 0pt,
  width: auto,
  body
)
