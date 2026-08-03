#import "../macros.typ":*

= QCD


== Non Abelian Gauge Theories

- Non Abelian gauge theories are the fundamentals of QCD (in fact, they ARE Quantum Chromodynamics).
  - We need to establish quite a bit more formal background in order to do actual physics, otherwise nothing would make sense 

=== Lie Groups and Lie Algebras
#definition("Non Abelian Gauge Group")[
  - Suppose that you have a representation of a Lie Group, written as $ R(G) = #qft(```latex
U = \exp(i \theta^a T^a)
```) $
  - $theta^a$ is a number
  - $T^a$ are the group generators for the _Lie Algebra_ that generates the _Lie Group_ $G$. 

  - The generators $T^a$ satisfy the commutation #qft(```latex
[T^a, T^b] = i f^{abc} T^c
```)
  - If $f^(a b c) = 0$, the gauge group $G$ is abelian
  - If $f^(a b c) != 0$, the gauge group $G$ is _non abelian_
]

- The commutation relations $[dots]$ are a mapping $cal(G) times cal(G) -> cal(G)$, without having to have a well-defined product
  - In the special case that a product is well defined, $[A,B] = A B - B A$

- Note: The *Jacobi Identity* must be satisfied regardless of the product being well defined
  - $ #qft(```latex
[A, [B, C]] + [B, [C, A]] + [C, [A, B]] = 0
```) $ 

  - By the Jacobi Identity, #qft(```latex
f^{abd} f^{dce} + f^{bcd} f^{dae} + f^{cad} f^{dbe} = 0
```)

#definition("Ideal")[
  - An _ideal_ subalgebra $frak(I) subset frak(g)$ is one that satisfies $[s,i] in frak(I) forall g in frak(g), i in frak(I)$
]
#definition("Simple")[
  - A simple Lie Algebra $frak(g)$ is one that has no trivial _ideal_ subalgebras
]
#example("Simple Lie Algebras")[
  - Very common Simple Lie Groups/Algebras are $frak(s o)(N)$ and $frak(s u)(N)$
  - There is also the simplectic group $frak(s p)(N)$
  - All of these you will soon see
]

#definition("Semisimple")[
  - A semisimple Lie algebra $frak(g)$ is one that can be expressed as the direct sum of simple Lie Algebras $frak(g_1), frak(g_2), dots, frak(g_n)$
    - That is, $ frak(g) = frak(g_1) plus.o frak(g_2) plus.o frak(g_3) plus.o dots plus.o frak(g_n) $

]

- The standard model is a very common example of a Semisimple Lie Group
  - The Lie group for the Standard model is $ G_"SM" ="SU"(3) times.o "SU"(2) times.o U(1) $
  - The Lie algebra for the Standard model is $ frak(g)_"SM" = frak(s u)(3) plus.o frak(s u)(2) plus.o frak(u)(1) $

#theorem("Hermicity")[
  - _All finite dimensional representations of semisimple Lie algebras are hermitian_
]

#proof("Hermicity")[
  - Unfortunately I have tried and failed to prove it, so at this point i cannot provide a proof
]

#definition("Unitary Groups")[
 - A unitary group is a group who's representation satisfies $ braket(arrow(psi),arrow(chi)) = mel(arrow(psi), U^dagger U, arrow(chi)) $
  - i.e. the inner product is conserved
 - This directly implies that $U^dagger U = bb(1)$
]

- Elements of $"SU"(N)$ have determinant 1
  - In general, matrix representations of unitary groups always have determinant $1$ due to their being unitary
- The group $"SU"(N)$ is defined by its action upon $N$ dimensional vector spaces
  - $ U = exp(i theta^a T^a) $
      - In $"SU"(N)$, $T^a$ are always hermitian
  - There are $N^2 -1$ generators for $"SU"(N)$
    - This implies that the dimension $d(G)$ is equal to $d(G) = N^2 -1$
#definition("Orthogonal Group")[
  - Orthogonal groups preserve a strictly real inner product

  - $V dot W = V dot O^T dot O dot W$
  - This directly implies that $O^T O = bb(1)$

]
- The dimension of an orthogonal group $"SO"(N)$ is $d("SO"(N)) = 1/2 d("SU"(N)) = 1/2 N(N-1)$
  - This is due to the fact that there are half as many generators for orthogonal groups due to their strict realness

- All elements of an orthogonal group (not special orthog.) have determinant $det(O) = plus.minus 1$
  - In $"SO"(N)$, the matrices are the ones with $det(O) = plus 1$
  - This has no impact on the dimension of the group

#definition("Simplectic Group")[
  - Symplectic groups $"Sp"(N)$ are defined via preserving a quaternionic inner product
  - They satisfy $ Omega S = - S^T Omega $ where $S in "Sp"(N)$ and $
#qft(```latex
\Omega = \begin{pmatrix} 0 & \mathbb{I} \\ -\mathbb{I} & 0 \end{pmatrix}
```) $

]
- There are, finally, the _exceptional_ simple groups $G_2, F_4, E_6, E_7, E_8$ which are of no use to standard model particle physics

- The _Only_ finite dimensional simple Lie Algebras are the algebras for the exceptional simple groups and $frak(s o)(N), frak(s u)(N), frak(s p)(N)$

=== Representations

- Consider representations of $"SU"(N)$ groups 
- Free theories of $N$ fields are invariant under $"U"(1) times "SU"(N)$
  - Since $"SU"(N)$ is simply connected, any representation of $"SU"(N)$ is one to one representation of $exp(frak(s u)(N))$

#example("Two Fields")[
  - Consider 2 fields $pphi_1, pphi_2$ with a kinetic lagrangian 
  $ #qft(```latex
\mathcal{L}_{kin} = (\partial_\mu \phi_1^*)(\partial_\mu \phi_1) + (\partial_\mu \phi_2^*)(\partial_\mu \phi_2) = (\partial_\mu \vec{\phi})^\dagger (\partial_\mu \vec{\phi})
```) $
  - We can write #qft(```latex
\vec{\phi} = \begin{pmatrix} \phi_1 \\ \phi_2 \end{pmatrix}
```)
    - This is invariant under a global $"SU"(2)$ symmetry $arrow(pphi) -> U arrow(pphi)$
  - Generally, as we have seen, we can write #qft(```latex
U = \exp \left[ i (\alpha_1 \tau_1 + \alpha_2 \tau_2 + \alpha_3 \tau_3) \right] = \exp(i a^a \tau^a) \\
w/ \tau^a = 1/2 \sigma^a
```)
  - Such $tau^a$ satisfy #qft(```latex
\tau^a : [\tau^a, \tau^b] = i \epsilon^{abc} \tau^c
```) 
  - This provides $f^(a b c) = epsilon^(a b c)$
]

#definition("Fundamental")[
  - A fundamental representation is the smallest non trivial representation of a Lie Algebra
]

- For $"SU"(N)$, the fundamental representation is the set of $N times N$ hermitian matricians with determinant $1$

- Under the fundamental representation, a set of $N$ fields transform (infinitesimally) as #qft(```latex
\phi_i \to \phi_i + i \alpha^a (T^a_{\text{fund}})_{ij} \phi_j
```) for some $alpha^a in RR$

#definition("Anti-fundamental Representation")[
  - #qft(```latex
T^{a}_{\text{anti-fund}} = -\left(T^{a}_{\text{fund}}\right)^{*}
```)
  - The anti-fund representation of a group is the conjugate of the fundamental representation
  - Notice that there is a minus sign in order to preserve the law $[T^a,T^b] = i f^(a b c) T^c$
]
- Therefore, the infinitesimal transformation law for anti-fundamental is #qft(```latex
\phi_i^* \to \phi_i^* + i \alpha^a (T_{\text{anti-fund}}^a)_{ij} \phi_j^* = \phi_i^* - i \alpha^a \phi_j^* (T_{\text{fund}}^a)_{ji}
```)

#note("Indices")[
- Mid latin alphabet $i,j$ are used to index color
]

- In order to determine the generators for a theory, we expand around $bb(1)$
  - In $"SU"(2)$, the generators are $sigma^mu$
  $  T^a = tau^a equiv sigma^a /2 $
  - In $"SU"(3)$, the generators are _eight_ (not $3 times.o overline(3) = 9$) *gellmann matrices* (such that $T^a = lambda^a /2$) which are as follows:
#align(center)[
  $
  lambda_1 &= mat(0, 1, 0; 1, 0, 0; 0, 0, 0)
  & quad
  lambda_2 &= mat(0, -i, 0; i, 0, 0; 0, 0, 0) \
  \
  lambda_3 &= mat(1, 0, 0; 0, -1, 0; 0, 0, 0)
  & quad
  lambda_4 &= mat(0, 0, 1; 0, 0, 0; 1, 0, 0) \
  \
  lambda_5 &= mat(0, 0, -i; 0, 0, 0; i, 0, 0)
  & quad
  lambda_6 &= mat(0, 0, 0; 0, 0, 1; 0, 1, 0) \
  \
  lambda_7 &= mat(0, 0, 0; 0, 0, -i; 0, i, 0)
  & quad
  lambda_8 &= 1/sqrt(3) mat(1, 0, 0; 0, 1, 0; 0, 0, -2)
  $
]
- Normalization of $f^(a b c)$ is arbitrary in QCD/non abelian gauge theory.
- A commonly used convention for normalization (in physics) is #qft(```latex
\sum_{c,d} f^{acd} f^{bcd} = N \delta^{ab}
```)
  - In math, the convention is #qft(```latex
\sum_{c,d} f^{acd} f^{bcd} = \delta^{ab}
```)
- The fixing the normalization of structure constants implies that the normalization of generators is fixed _in all representations_
- For representations, #qft(```latex
[T^a, T^b] = i f^{abc} T^c
```) must hold when $f^(a b c)$ is the same
  - Notice that this equation is not invariant under a rescaling of $T^c_R$

- Normalization of $"SU"(N)$:
  - It is normalized s.t. #qft(```latex \text{tr}(T^a T^b) = \frac{1}{2} \delta^{ab}
```)
- In a general lie algebra, $[T^a,T^b]$ is well defined and $T^a T^B$ is not (as seen before)
  - In the fundamental representation of $"SU"(N)$, such generators, in fact, can be multiplied
  - #qft(```latex
T^a T^b = \frac{1}{2N} \delta^{ab} + \frac{1}{2} d^{abc} T^c + \frac{1}{2} i f^{abc} T^c
```)
  - #qft(```latex
d^{abc} = 2 \operatorname{tr} \left[ T^a \{ T^b, T^c \} \right]
```)
- In $"SU"(N)$, there is a unique $d^(a b c)$ up to a constant
  - In $"SU"(2)$, $d^(a b c) = 0$

- Some useful trace identities for generators are the following: #qft(```latex
\text{tr}\left[T^a T^b T^c\right] = \frac{1}{4}\left(d^{abc} + if^{abc}\right) \\
\text{tr}\left[T^a T^b T^c T^d\right] = \frac{1}{4N}\delta^{ab} + \frac{1}{8}\left(d^{abe} + if^{abe}\right) \times \left(d^{cde} + if^{cde}\right)
```)

#definition("Adjoint Representation")[
  - The adjoint representation is the group acting upon its own elements
  - Extremely formally $ "Ad" : G -> "GL"(frak(g)) $ with $G$ an element of a Lie group, $frak(g)$ an element of a Lie algebra, and $"GL"$ being the group of invertible matrices
  - If the lie group generated by a lie algebra is $e^X$, then $"Ad"_A (X) = A X A^(-1)$ with $A in G$.
]
- The adjoint representation amounts to acting upon the space that is spanned by the generators, as you have seen
- In $"SU"(N)$, there are $N^2 -1$ generators and hence there are $N^2 -1$ dimensions for the adjoint representation
- Matrices in the adjoint representation are given by $(T^a_("adj"))^(b c) = -i f^(a b c)$
  - For $"SU"(2)$, the matrices are #qft(```latex
T^1_{adj} = \begin{pmatrix} 0 & 0 & 0 \\ 0 & 0 & -i \\ 0 & i & 0 \end{pmatrix}, T^2_{adj} = \begin{pmatrix} 0 & 0 & i \\ 0 & 0 & 0 \\ -i & 0 & 0 \end{pmatrix}, T^3_{adj} = \begin{pmatrix} 0 & -i & 0 \\ i & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix}
```)
- In $"SU"(3)$, they are $8 times 8$ matrices as you may be able to guess
- _Gauge fields transform in the adjoint representation_

#definition("Casimirs")[
  - Casimirs are used to "characterize representations" @schwartz2014quantum
]
#definition("Quadratic Casimir")[
- The Quadratic Casimir is defined via $ (sum_a) T^a_R T^a_R = C_2 (R) bb(1) $
]

#theorem("Schur's Lemma")[
  - Group elements that commute with all other elements are proportional to $bb(1)$
]
- This theorem is extremely nontrivial. You can see a proof in @hall2015lie

- I am, however, able to provide a proof on why the $T^a T^a$ commutes with everything $ #qft(```latex
\left[ T^a_R T^a_R, T^b_R \right] = \left( i f^{abc} T^c_R \right) T^a_R + T^a_R \left( i f^{abc} T^c_R \right)
```) = #qft(```latex
-if^{abc} \{T^c_R, T^a_R\} = 0
```) $

- Evaluating quadratic Casimirs involve choosing generators such that #qft(```latex
f_r \left[ T^a_p, T^b_p \right] = T(R)^ab
```)
  - $T(R)$ is known as the _index_

- In the fundamental representation, the convention implies that
  - $T("fund") equiv T_F = 1/2$ since (T^a_(i j) T^b_(i j) = 1.2 delta^(a b))
- In the adjoint representation, $T("adj") equiv T_A = N$
  - This is due to the fact that $f^(a c d) f^(b c d) = N delta^(a b)$

- Setting $a=b$ and summing over $a$ for the definition of $T(R)$ yields
  - $ d(R) C_2 (R) = T(R) d(G) $
    - $d(R)$ is the dimension of the representation
    - $d(G)$ is the dimension of the group

- Fundamental Casimir:

  - #qft(```latex
C_F = C_2(fund) = \frac{N^2 - 1}{2N}
```)
  - In $"SU"(2)$, $C_F = 3/4$
  - In $"SU"(3)$, $C_F = 4/3$
- Adjoint Casimir:
  - $C_A equiv C_2 ("adj") = N$
  - Generally, terms in YM theories will contain at least some factors of $C_F$ and $C_A$

- For any representation, #qft(```latex
\text{tr}([T^a_R, T^b_R] T^c_R) = i f^{abc} \text{tr}(T^d_R T^d_R) = i f^{abc} T(R)
```)
  - This implies that #qft(```latex
f^{abc} = -\frac{i}{T_F} \text{tr} \left( [t^a, t^b] t^c \right)
```)

- In $"SU"(N)$, the _Fierz Identity_ is satisfied:
  - #qft(```latex
\sum_{a} T_{ij}^{a} T_{kl}^{a} = \frac{1}{2} \left( \delta_{il} \delta_{jk} - \frac{1}{N} \delta_{ij} \delta_{kl} \right)
```)
  - Since generators in $"SU"(N)$ are traceless, the sum over $delta^(i j)$ and $delta^(k l)$ yields zero
  - Hence, #qft(```latex
\text{tr}[T^a A] \text{tr}[T^a B] = \frac{1}{2} [\text{tr}(AB) - \frac{1}{N} \text{tr}(A) \text{tr}(B)]
```)

#definition("Anomaly Coefficient")[
- An anomaly coefficient $A(R)$ is defined by the equation #qft(```latex
\text{tr}\left[T^a\{T^b, T^c\}\right] = \frac{1}{2}A(R)d^{abc} = A(R)\text{tr}\left[T^a\{T^b, T^c\}\right]
```)

]

== Wilson Lines

=== Abelian Wilson Lines

- The motivation between wilson lines is a want for telling if $pphi(x) = pphi(y)$ (some how)

- Notice that one cannot simply take the difference since #qft(```latex
\phi(x) - \phi(y) \to e^{i\alpha(x)} \phi(x) - e^{i\alpha(y)} \phi(y)
```)

  - It is additionally impossible to take any notion of $partial_mu pphi$ due to derivative definition based on differences

#definition("Wilson Line")[
  - A wilson line $W(x,y)$ is something that transforms as $ W(x,y) -> e^(i alpha(x)) W(x,y) e^(- i alpha(y) )$
    - This is a "bi-local transformation" @schwartz2014quantum
]

- A key feature of Wilson lines is that they satisfy the property #qft(```latex
W(x,y) \phi(y) - \phi(x) \to e^{i\alpha(x)} W(x,y) e^{-i\alpha(y)} e^{i\alpha(y)} \phi(y) - e^{i\alpha(x)} \phi(x) \\
= e^{i\alpha(x)} (W(x,y) \phi(y) - \phi(x))
```)

- Taking $y^mu = x^mu + delta x^mu$, we can obtain the derivative via  #qft(```latex
D_\mu \phi(x) \equiv \lim_{\delta x^\mu \to 0} \frac{W(x, x+\delta x) \phi(x+\delta x) - \phi(x)}{\delta x}
```)
  - This gives a transformation law that we expect #qft(```latex
D_\mu \phi(x) \longrightarrow e^{i\alpha(x)} D_\mu \phi(x)
```)

- Writing the wilson line in terms of a perturbation, $ W(x,x + delta x) = 1 - e delta x^mu A_mu (x) + cal(O)(delta x^2) $
  - This gives, as we expect, the abelian gauge transformation #qft(```latex
A_{\mu}(x) \to A_{\mu}(x) + \frac{1}{e} \partial_{\mu} \alpha(x)
```)
  - The Guage field is a connection

- This provides the abelian covariant derivative #qft(```latex
D_{\mu} \phi(x) = \partial_{\mu} \phi(x) - i e A_{\mu} \phi
```)
- The _closed-form_ for the wilson line is written as #qft(```latex
W_P(x, y) = \exp\left(ie \int_y^x A_\mu(z) dz^\mu\right)
```)
  - Notice that this is a line integral
  - This is the true Wilson Line
- Parametrizing the wilson line with $z^mu (lambda)$ such that $0<= lambda <= 1$ and $z^mu (0) = y^mu, z^mu (1) = x^mu$, we obtain that #qft(```latex
W_P(x,y) = \exp\left(ie \int_0^1 \frac{dz^\mu(\lambda)}{d\lambda} A_\mu(z(\lambda)) d\lambda\right)
```)
- We can test how this behaves under a gauge transformation
  - #qft(```latex
W_P(x,y) \to \exp\left[ie\int_y^x A_\mu(z)dz^\mu + i\int_y^x \partial_\mu \alpha(z)dz^\mu\right] \\ = e^{i\alpha(x)} W_P(x,y) e^{-i\alpha(y)}
```)
  - This behaves correctly from our definition of a Wilson line

- Wilson Loops:
  - Setting $x=y$, we obtain that #qft(```latex
W_P^{\text{loop}} = \exp\left(ie \oint_P A_\mu dx^\mu\right)
```)
- Via stokes' theorem, #qft(```latex
W_{p}^{loop} = \exp\left(i \frac{e}{2} \int_{\Sigma} F_{\mu\nu} d\sigma^{\mu\nu}\right) = 1 + i \frac{e}{2} \int_{\Sigma} F_{\mu\nu} d\sigma^{\mu\nu} + \mathcal{O}(e^2)
```) where $sigma^munu$ is a surface element

- Notice that now the wilson line only depends on the field tensor $F^munu$ (this should not be surprising since it depends on the gauge field)
- Checking the transformation for the commutator $[D_mu,D_nu]$, we obtain #qft(```latex
[D_\mu, D_\nu] \phi(x) \to e^{i\alpha(x)} [D_\mu, D_\nu] \phi(x)
```)
  - therefore, we obtain #qft(```latex
[D_\mu, D_\nu] \phi(x) = ([\partial_\mu, \partial_\nu] - ie[\partial_\mu, A_\nu] + ie[\partial_\nu, A_\mu]) \phi(x) = -ie F_{\mu\nu}(x)
```)
  - Hence, we can define the EM field tensor as #qft(```latex
F_{\mu\nu}(x) = \frac{i}{e} [D_\mu, D_\nu]
```)

=== Non Abelian Wilson Lines

- We would like to repeat the same process as we did with abelian wilson lines
  - Lagrangians have more symmetry than just phase rotation in non abelian theories (by definition)

- Consider the kinetic lagrangian with $N$ particles #qft(```latex
\mathcal{L}_{kin} = \sum_{j=1}^{n} \bar{\psi}_j (i\not\partial - m) \psi_j
```)
  - This has a global $"SU"(N)$ symmetry
- Such particles transform as #qft(```latex
\psi_i \to (e^{i\alpha^a T^a})_{ij} \psi_j
```)
  - $alpha^a$ is not a function of $x$ for global symmetries

#definition("Non Abelian Wilson Line")[
  - We are now motivated to write #qft(```latex
W_P(x, y) = P \left\{ \exp \left( ig \int_y^x A_\mu^a(z) T^a dz^\mu \right) \right\}
```) where $P$ is path ordering
    
]

- The Taylor expansion of the wilson line is #qft(```latex
W_P(z, y) = 1 + ig \int_0^1 \frac{dz^\mu(\lambda)}{d\lambda} A_\mu^a(z(\lambda)) T^a d\lambda \\ - \frac{1}{2} g^2 \int_0^1 d\lambda \int_0^1 d\tau \frac{dz^\mu(\lambda)}{d\lambda} \frac{dz^\nu(\tau)}{d\tau} A_\mu^a(z(\lambda)) A_\nu^b(z(\tau)) (T^a T^b \theta(\lambda - \tau) + T^b T^a \theta(\tau - \lambda)) + \dots
```)
- Under a gauge transformation #qft(```latex
W_P(x,y) = e^{i \alpha^a(x) T^a} W_P(x,y) e^{-i\alpha^a(y) T^a}
```) which definitely looks correct
- We are motivated to define a variable $underline(A_mu) equiv A_mu^a T^a$
  - This gives #qft(```latex
W_P(x,y) = P \left\{ \exp \left( ig \int_{y-x}^{x} \underline{ A_\mu(z)} dz^\mu \right) \right\}
```)

- An infinitesimal transformation for $W$ is #qft(```latex
W(x^\mu, x^\mu + \delta x^\mu) = 1 + i \epsilon \underline{A_\mu} \delta x^\mu
```)

- Local transformations can be expressed in terms of #qft(```latex
U(x) = e^{i \alpha^a(x) T^a}
```)
  - In $"SU"(N)$, $U^dagger (y) = U(y)$
- Then, #qft(```latex
W(x, y) \to U(x) W(x, y) U^\dagger(y)
```)
