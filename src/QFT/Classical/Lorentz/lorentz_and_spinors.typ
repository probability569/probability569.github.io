= Lorentz and Spinors
#import "../../macros.typ":*

== Lorentz Transformations




#definition("Metric Tensor")[
  A (or in special relativity, _The_) metric tensor is defined as being the dot product of basis vectors $ g_(mu nu) = hat(e)_((mu)) dot hat(e)_((nu))  $  This definition is all but useless in Quantum Field Theory due to the whole theory entirely using Special Relativity instead of General Relativity #footnote[
    Unless string theory, again
  ]

  The special relativity metric tensor (which is subject to arguments over convention), is either $g_(mu nu ) = "diag"(+,-,-,-)$ or $g_(mu nu ) = "diag"(-,+,+,+)$ #footnote[
    Personally I am used to $"diag"(+,-,-,-)$.
  ].
]

#definition("Lorentz Transformation & Lorentz Invariance")[
  A _Lorentz transformation_ $Lambda$ is defined as a coordinate transformation $ Lambda:(t,x,y,z) -> (t',x',y',z') $ such that $ Lambda^T g Lambda = g $ or $ Lambda^mu_alpha Lambda^nu_beta eta_(munu)  = eta_(alpha beta) $ In special relativity (minkowski space), this condition is loosened to $ s^2 = t^2 - x^2 $ is conserved but the previous condition is still useful in discussion of group theory and derivation of _Spinors_. Generally, Lorentz transformations are transformations that 
]

== Group Theory (cont'd)
#definition("Lorentz Group")[
  This is the set of operations $Lambda$ (in the 4-vector representation) such that $ Lambda^T g Lambda  = g $
]
- 4-vector representation $ x_mu -> Lambda_munu x_nu $
- Lorentz transformations are _rotations_ and _boosts_

- Rotations: $  $
- Can utilize _infinitesimal_ Lorentz transformations in order to extract the group ($O(1,3)$) (we let $beta_i$ parametrize boosts and $theta_i$ parametrize rotations)
  - $ delta x_0 = beta_i x_i \ delta x_i = beta_i x_o - epsilon_(i j k) theta_j x_k $
  or $ delta x_mu = i [sum_(i in {1,2,3} ) theta (J_i)_munu + beta_i (K_i)_munu ]x_nu $
  - $J_i$ and $K_i$ matrices: 
  $ J_1 = i mat(
                 0, , , ;
                  , 0, , ;
                  , , 0, -1 ;
                  , , 1, 0 ; )
                  
    , J_2 = i mat(
                 0, , , ;
                  , 0, ,1;
                  , , 0, ;
                  ,-1, , 0 ; )    
    , J_3 = i mat(
                 0, , , ;
                  , 0,-1,;
                  ,1, 0, ;
                  ,, , 0 ; )    
\
K_1 = i mat(
                 0, -1, , ;
                  -1, 0, ;
                  , , 0, ;
                  ,, , 0 ; )    
, K_2 = i mat(
                 0, , -1, ;
                  , 0, ;
                  -1, , 0, ;
                  ,, , 0 ; )   
, K_3 = i mat(
                 0, , ,-1;
                  , 0, ;
                  , , 0, ;
                  -1,, , 0 ; )    
              
  $
     - Such matrices are _generators of the Lorentz group_
      - Can use to obtain the Lie Algebra

  - $ Lambda = exp(i theta_i J_i + i beta_i K_i) $
  





== Spinors

TODO
