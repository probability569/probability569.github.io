= QED

#import "../macros.typ":*

#definition("Quantum Electrodynamics")[
  Quantum Electrodynamics is a relatively simple theory with only one force involved (as suggested by the name, it is the electromagnetic force), mediated by the _photon_  $A_mu$ and one/two type(s) of fermion depending on what you consider a type of particle  (an _electron_/_positron_) 
]

=== Charge

- The charge in quantum electrodynamics is associated with the $"U"(1)$ symmetry $ pphi -> e^(- i alpha(x)) pphi $ (in fact, this applies in spinor QED as well, due to the )
- 

== Spinor QED (Standard Quantum Electrodynamics)

- The Spinors in Quantum Electrodynamics are Dirac Spinors due to their presence of charge (Since Majorana spinors are the same as their antiparticle, they of course cannot be a candidate for this, and hence the spinors must be Dirac Spinors).



=== Solution to the Dirac Equation
- Similarly to a Scalar field theory, we will quantize particles by writing $ psi_s (x) = integral diff(3,p) u_s (p) e^(i p x) $ for particles and $ chi_s (x) = integral diff(3,p) v_s (p) e^(i p x) $ for antiparticles
- These $u_s (p)$ and $v_s (p)$ are _basis spinors_ which satisfy the momentum space dirac equation. That is, $ mat(-m, p dot sigma; p dot macron(sigma), -m) u_s (p) = mat(-m, -p dot sigma; -p dot macron(sigma),  -m;) v_s (p) = 0 $ 
- Again, these $u_s (p)$ and $v_s (p)$ are 4-index Dirac spinors.
#rules("Basis Dirac Spinors")[In general, the solution to this equation is $ u_s (p) = mat(sqrt(p dot sigma) xi; sqrt(p dot macron(sigma)) xi), v_s (p) = mat(sqrt(p dot sigma) eta_s ; -sqrt(p dot macron(sigma)) eta_s) $]
  - $ sum_s u_s (p) macron(u)_s (p) = feynman(p) + m $

  - $ sum_s v_s (p) macron(v)_s (p) = feynman(p) - m $
 


=== CPT Theorem

- In order to have the entire Lorentz Group, we must define the following discrete transforms for spinors.
- Time reversal $T$ which maps $ T: (t,arrow(x)) -> (-t,arrow(x)) $
- Parity $P$ which maps $ P: (t, arrow(x)) -> (t, -arrow(x)) $
- Charge conjugation $ C: psi -> -i gamma^2 psi $ reverses charge (essentially it is $"particle"->"antiparticle"$)



=== Interacting QED

- The Lagrangian for Quantum Electrodynamics is $ lag = -1/4 F_munu F^munu + i macron(psi) feynman(D) psi - m macron(psi) psi \ = -1/4 F_munu F^munu  + macron(psi) (i gamma^mu partial mu - m ) psi - e macron(psi) gamma^mu psi A_mu $

- This gives rise to the interaction $-i e gamma^mu$ with the Feynman Diagram //insert 4 feynman diagrams for vertex interactions e macron(psi) gamma^mu psi A_mu

#theorem("Spin-Statistics Theorem")[
  The Spin statistics theorem is the theorem that spinors are governed by Fermi-Dirac statistics and that Vectors are governed by Bose-Einstein statistics. Essentially $psi(x) chi(y) = - chi(x) psi(y)$ and
]

- The Feynman propagator for spinors is $ mel(0, T psi(0) macron(psi)(x) , 0 ) = integral diff(4,p)  (i ( feynman(p) +m))/(p^2 - m^2 + i epsilon) e^(i p x ) $ with of course the implicit limit of $epsilon -> 0$
  - The derivation for this is as follows
  - 

- The Feynman propagator clearly gives rise to the electron propagator present on internal electrons $ "feynman diagram" = i(feynman(p) + m)/(p^2 - m^2 + i epsilon) $



== Renormalization

- Let us take a look at the 1-loop correction to the free electron.

// Insert Feynman Diagram

- Evaluating this loop gives an infinite quantity which we would like to analyze (it is considered a UV Divergence)

- In order to properly evaluate such integrals to give a physical quantity, it is key to utilize a technique known as *renormalization*
  - There are different types of renormalization, such as parametrizing integral bounds, taking the limit of the number of dimensions, etc


#mitex(`
\begin{equation}
\langle A_i\rangle = - \int_{\text{all space-time}} \mathrm{d}x_1 \ldots \mathrm{d}x_n \left[ e^{-iH(x)S\delta t} \right] \\
\times \langle Z_{n,1}(x-c/2)\rangle \langle Z_{n,1}(e^{iH(x)}\delta t) \rangle
\end{equation}
`)

#mitex(`
\begin{equation}
[\hat{\epsilon}^{(s)}_{\mu},\bar{\psi}(y)]=i\gamma^3\delta^{(4)}(\vec{x}-\vec{y})
\end{equation}
`)


#mitex(`
\begin{equation}
\hat{\phi}(\vec{x})|\psi\rangle = \text{const}
\end{equation}
`)


#mitex(` \begin{equation} |\phi_{\nu}^{k}\rangle = \frac{1}{\sqrt{L}} \sum_{j=0}^{L-1} \exp \left[ -\frac{2\pi i}{L}(DS_{\nu} + k) j \right] \\ \times e^{-i\theta_j}|q_j,p_j\rangle_{\text{tor}}. \end{equation} `)
