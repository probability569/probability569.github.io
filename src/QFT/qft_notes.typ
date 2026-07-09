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


#include("Prerequisite Math/math_toolkit.typ")
#include("Classical/Classical Field Theory/cft.typ")
//#include("Classical/Lorentz/lorentz_and_spinors.typ")

#include("Classical/Lagrangians/lagrangians.typ")
#include("Classical/Classical Symmetries/classical_symmetries.typ")
#include("Scalar Field Theory/Quantization and Fock/quantization_and_fock.typ")
#include "misc/Cross Sections/cross-sect.typ"
#include "Scalar Field Theory/Propagators/propagators.typ"
#include "Feynman Diagrams/feynman_diagrams.typ"

//#include "Field Theories/Field_Theories.typ"
//

#include("Classical/Lorentz/lorentz_and_spinors.typ")
#include "QED/QED.typ"
#bibliography("Citations/works.bib", full:true)
