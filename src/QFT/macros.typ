#import "@preview/ctheorems:1.1.3": *
// macros.typ

#import "@preview/feyndrawgram:1.0.0": feyndrawgram

#import "@preview/mitex:0.2.7":*

#import "@preview/physica:0.9.8": *

//#import "@preview/inknertia:0.1.0": feynman
//#import feynman: *

//#import "@preview/showybox:2.0.4": showybox
#import "@preview/mannot:0.2.2": markrect

#import "@preview/colorful-boxes:1.4.3":*
//#let ket(x) = $|#x chevron.r$
//#let bra(x) = $chevron.l #x|$




// Map LaTeX commands to your physica functions
#let qft-macros = ```tex

\newcommand{\bra}[1]{\langle #1 \vert}
\newcommand{\ket}[1]{\vert #1 \rangle}
\newcommand{\braket}[2]{\langle #1 \vert #2 \rangle}
\newcommand{\mel}[3]{\langle #1 \vert #2 \vert #3 \rangle}
\newcommand{\ev}[1]{\langle #1 \rangle}
```

// 2. Stitch the preamble and the OCR math together
#let qft(body) = mitex(qft-macros.text + "\n" + body.text)


// Define the mapping dictionary
// Create the custom wrapper, passing the macros directly


// Create a custom block parser so you don't have to type config: physica-conf every time


#let feynman(body) = math.cancel(angle: 15deg, body)

custom function `feynman`: $feynman(x)$

#let munu = $mu nu$

#let pphi = $phi.alt$
#let lag = $cal(L)$

#let diff(x,y) = $(dif^#x #y)/(2 pi)^#x$

#let fquant(n,p,x) = $integral diff(#n,#p) 1/sqrt(2 omega_#p) (a_#p e^(- i #p #x) + a^dagger_(#p) e^(i #p #x) ) $


#let ddelta(x,y) = $(2 pi)^#x op(delta^#x)(#y)$

#let proof = thmproof("proof","Proof")
#let theorem = thmbox("theorem", "Theorem", stroke: (left: 3pt + rgb("#e8f8f5")))
#let definition = thmbox("definition", "Definition", stroke:( left: 3pt + rgb("#fcf3cf")))
#let note = thmbox("note", "Note", stroke: (left: 3pt + rgb("#e67e22")), inset: (x: 10pt, y: 5pt)).with(numbering: none)
//#let physics = thmbox("physics", "Principle", fill: rgb("#ebf5fb"))

#let example = thmbox("example","Example")

#let rules(title,body) = slanted-colorbox(
  title:title,
  color: "red",
  radius: 0pt,
  width: auto,
  body
)
