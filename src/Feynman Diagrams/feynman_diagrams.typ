#import "../macros.typ":*

= Feynman Diagrams 





#definition("Feynman Diagram")[
  A Feynman diagram is something that is used to represent particle interactions, or simplifications of them which are summed. generally to calculate the LSZ reduction for matrix elements. These matrix elements are ultimately used to calculate cross sections as seen in _Cross Sections_.
]


#definition("Feynman Rules")[
  Feynman rules are a set of rules for a theory which is used to evaluate Feynman diagrams.
]
- A standard set of Feynman rules that can generally apply everywhere are the following

#rules("General Position Space Feynman Rules")[- At each vertex, a factor of the interaction coupling is given 
- All lines are integrated over $d^3 x$ after applying the propagator
]

#rules("General Momentum Space Feynman Rules (Arguably much more useful)")[- Each vertex of a Feynman Diagram gets a factor of whatever the interaction coupling is.
- Vertices can only occur at points that satisfy interactions in the Lagrangian #footnote[For instance, if $lag_("int") = g/3! pphi^3$, only interactions which involve fields intersecting at three points are included in the set of tree-level diagram]
- For each edge whose momentum is known (that does not connect to an external vertex), a factor of the propagator for the theory $Pi$ is gained
- For each edge whose momentum $k$ is unknown (i.e., a loop),  a factor of $Pi$ is gained and must be integrated over $ diff(4,k). $
- The final product gives $ i cal(M)$ for the diagram

]

#note("Schwinger-Dyson Equation")[
  
]