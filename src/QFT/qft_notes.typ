#import "@preview/ilm:1.1.2": *

#import "@preview/ctheorems:1.1.3": *
#show: thmrules

#set enum(numbering: "(a)")



// Define the Solution block




#show: ilm.with(
  title: "Quantum Field Theory Notes",
  author: "Chance Emrich",
  date: datetime(year: 2026, day: 26, month: 05),
)



#include("Math Toolkit/math_toolkit.typ")
#include("Lorentz and Spinors/lorentz_and_spinors.typ")
#include("Lagrangians/lagrangians.typ")
#include("Classical Symmetries/classical_symmetries.typ")
#include("Quantization and Fock/quantization_and_fock.typ")
#include "Cross Sections/cross-sect.typ"
#include "Propagators/propagators.typ"
#include "Feynman Diagrams/feynman_diagrams.typ"

#include "Field Theories/Field_Theories.typ"
#include "QED/QED.typ"
#bibliography("Citations/works.bib", full:true)
