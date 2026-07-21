#import "@preview/ilm:1.1.2": *

#import "@preview/ctheorems:1.1.3": *
#show: thmrules

#set enum(numbering: "(a)")

#set heading(numbering: (..nums) => {
  let vals = nums.pos()
  if vals.len() == 1 {
    // Level 1 (Parts): Roman Numerals
    return numbering("I", vals.first())
  } else if vals.len() == 2 {
    // Level 2 (Sections): Standard integers, ignoring the Part number
    return str(vals.last()) 
  } else {
    // Level 3+ (Subsections): Standard 1.1, 1.2 formatting
    return numbering("1.1", ..vals.slice(1))
  }
})


#show heading.where(level: 1): it => {
  // Force a new page for each Part
  pagebreak(weak: true)
  
  // Vertically center the content
  v(1fr)
  align(center)[
    // Display "Part I", "Part II", etc.
    #text(size: 2em, weight: "regular")[Part #counter(heading).display("I")]
    #v(1em)
    // Display the actual title (e.g., "Quantum Field Theory")
    #text(size: 3em, weight: "bold")[#it.body]
  ]
  v(1fr)
  
  // Force a page break after the title page
  pagebreak(weak: true)
}



// Define the Solution block




#show: ilm.with(
  title: "QFT, The Standard Model, and Supersymmety",
  author: "Chance Emrich",
  date: datetime(year: 2026, day: 26, month: 05),
)


#include("Prerequisite Math/math_toolkit.typ")
#include("Scalar Field Theory/scalar.typ")
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

#include("QED/Lorentz/lorentz_and_spinors.typ")
#include "QED/QED.typ"
#bibliography("Citations/works.bib", full:true)
