= Spinors and Lots of Math

== Lorentz and Spinors
#import "../../macros.typ":*
Some Supplementary material for this section is Spinors for Beginners by Eigenchris which is very useful to get a grasp of the actual math that is going on.

=== Lorentz Transformations




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

=== Group Theory (cont'd)
#definition("Lorentz Group")[
  This is the set of operations $Lambda$ such that $ Lambda^T g Lambda  = g $
]
- For instance, a Lorentz transformation could follow the 4-vector representation, defined as $ x_mu -> Lambda_munu x_nu $

- More generally, a field $pphi$ transforms under a representation of the lorentz group as $ pphi_i(x) -> R(Lambda)_(i j) pphi_j (Lambda^(-1) x) $ (Similar to a matrix transformation)


- The continuous Lorentz transformations that exist are _rotations_ and _boosts_, which are the most general possible (continous) Lorentz transformations which can occur as they (+ the discrete Lorentz transformations such as $P$ and $T$) form the *Lorentz Group*

- Rotations can be represented, again in the 4-vector representation, as rotation matrices. We let $theta_x, theta_y, theta_z$ represent rotations in the $x,y,z$ axes respectively. Then, the rotation matrices can be represent as as $ Lambda(theta_x) = mat(1,,,;,1,,;,,cos theta_x,sin theta_x ;,,-sin theta_x ,cos theta_x;), Lambda(theta_y) = mat(1,,,;,cos theta_y , , -sin theta_y; ,, 1 , ; , sin theta_y , , cos theta_y ;) \ 

Lambda(theta_z) = mat(1,,,; , cos theta_z , sin theta_z , ; , -sin theta_z, cos theta_z, ; ,,, 1; )

$

- In a similar manner, boosts can be represented by matrices in the 4-vector representation. Denoting $beta_x, beta_y, beta_z$ as the boost angles (in the hyperbolic trigonometric functions), we have that $ Lambda(beta_x) = mat( cosh beta_x,  sinh beta_x , , ; sinh beta_x,  cosh beta_x , , ; , ,1 , ; , , ,1 ; ), Lambda(beta_y) = mat(cosh beta_y, , sinh beta_y, ; , 1 , , ; sinh beta_y,, cosh beta_y, ; ,,,1;) \ Lambda(beta_z) = mat(cosh beta_z , , , sinh beta_z ; , 1 , ,; , , 1 ,; sinh beta_z , ,  , cosh beta_z ;) $

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
 

  == Dirac Spinors
  === Spinors
  #definition("Dirac Spinor")[
    An object $psi$ obeying the transormation properties

    $ psi -> S[Lambda] psi, psi^dagger -> psi^dagger S[Lambda] $
  ]

- What does this mean?
- A lorentz transformation can be written as $ Lambda^mu_nu = exp(1/2 Omega_(rho sigma) (J^(rho sigma))^mu_nu) $ with new notation introduced for convenience such that $Omega_(0 i) = beta_i$ boosts, $Omega_(1 2) = - Omega_(1 2) = theta_z$ (rotation angles) with $ (J^(rho sigma))^munu = g^(rho mu)  g^(sigma nu) - g^(sigma mu) g^(rho nu)$

  - These are another way to write generators for the lorentz group
  - Notice that, using this tensor, we can write $ K_i = -i (J^(0 i))^mu_nu $ for boosts and  $ J_i = i/2 epsilon_(i j k) (J^(j k))^mu_nu $ for rotations
- These generators form $frak(s o)(1,3)$, the Lorentz Algebra
  - Their exponential gives a representation of the Lorentz Group double cover $"Spin"(1,3) tilde.equiv "SL"(2,CC)$

#theorem[
  The Lorentz Algebra, $frak(s o)(1,3)$, has two commuting sub-algebras represented by the 3d rotation algebras $frak(s u)(2)$
]
#proof[
- Notice that if we switch back to $J_i$ and $K_i$, we can derive $"SU"(2)$, the group for spinors.

- Define $ J^+_i equiv 1/2 (J_i + i K_i)$, $J^-_i equiv 1/2 (J_i - i K_i)$
- We have then, $ [J^+_i,J^+_j] = i epsilon_(i j k) J^+_k \ [J^-_i, J^-_j] = i epsilon_(i j k) J^-_k \ [J_i^+, J_i^-] = 0  $ hence, $frak(s o)(1,3)$ has 2 communiting sub algebras, both of which are 3d rotation groups given by the Levi-Cevita connections. Hence, $"SO"(1,3) tilde.equiv "SU"(2) plus.o "SU"(2)$
]
- Hence, we now have the definition of a spinor
#definition("Spinor")[
  A _Spinor_ is an object that transforms under $"SU"(2)$
]

=== Clifford Algebruh

- To construct Dirac Spinors, one must first construct gamma matrices, which form the basis of a Clifford Algebra $scr(C l)_(1,3) (RR)$

#definition("Gamma Matrices")[Gamma matrices are defined as being anticommuting matrices such that $ {gamma^mu, gamma^nu} = 2 g^munu $ and having the property that $ (gamma^0)^2 = 1,  (gamma^i)^2 = -1 $]


- As seen in the _math toolkit_, these matrices can be represented as $ gamma^mu = mat(, sigma^mu; macron(sigma)^mu , ;) $ with $sigma^mu = (bb(1), arrow(sigma)), macron(sigma)^mu = (bb(1), -arrow(sigma))$ and $sigma^i$ being Pauli Matrices
  - This representation is known as the Weyl Representation
- An additional piece of useful notation is the idea that $feynman(p) = p_mu gamma^mu = p^mu gamma_mu$



#rules("Pauli Matrix and Gamma Matrix Indentities")[
 $ sigma^i sigma^j = delta^(i j) i epsilon^(i j k) sigma^k, {sigma^i, sigma^j} = 2 delta^(i j), [sigma^i, sigma^j] = 2 i epsilon^(i j k) sigma^k $ For Pauli Matrices 
]

- A useful quantity to define is a representation of the Lorentz Algebra $ S^(rho sigma) = 1/2 [gamma^rho,gamma^sigma] = 1/2 gamma^rho gamma^sigma - 1/2 g^(rho sigma) $ 
- The reason that this is a representation of the
