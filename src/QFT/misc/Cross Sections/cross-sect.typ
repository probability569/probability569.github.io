= Cross Sections
#import "../../macros.typ":*

#rules("Important Result of this Section")[
  $ ((dif sigma)/(dif Omega) )_"CM" = 1/(64 pi^2 E_("CM")^2) abs(cal(M))^2 $ and the Born approximation $ ((dif sigma)/(dif Omega))_"Born" = m^2_e/(4 pi^2) [ op(tilde(V))(arrow(k))]^2 $
]

- Cross sections used to make sense of particle accelerator data
- Cross sectional area: $ sigma = (hash "particles")/("time" times "number density" times "velocity of beam") \ = 1/T 1/Phi N, Phi = hash "density" times "beam vel." = 1/V times abs(arrow(v)) $
  - More useful/natural is differential cross section $ (dif sigma)/(dif Omega) $ for some angle/change in angle $Omega$.
  - Info about shape of object with this

- QM
  - Generalize to Cross Sections
  - In QM, there is a probability of scattering $ P = N/N_("inc") $ with $N_"inc"$ number of incident particles
  - Cross section $ d sigma = 1/T 1/Phi d P $ (normalize flux)
  - Differential scattering number $ dif N = L times dif sigma $
    - $L$ is defined as the _Luminosity_ through this equation
== Cross Section to Matrix Element

- $2 -> N$ Particle Interaction: $ p_1 + p_2 -> {p_j} $
- $ Phi = abs(arrow(v)_1 - arrow(v)_2)/(V) \ ==> dif sigma = V/T 1/(abs(arrow(v)_1 - arrow(v)_2)) dif P $
- Have that $ dif P = (abs(mel(f,S,i))^2)/(braket(f) braket(i)) dif Pi $
  - with  $ dif Pi = product_j N/(2 pi)^3 dif^3 p_j $
  - $ integral dif Pi = 1 $ since $ integral diff(,P) = 1/V $

- $ [a_p, a^dagger_q] = ddelta(3, p-q) $
  - Implies that $braket(p) = ddelta(3,0)$
  - Normally $delta^3(0)$ infinite but $ ddelta(3,p) = integral_V dif^3 x e^(i arrow(p) dot arrow(x)) \ ==> delta^3(0) = V/(2 pi)^3 \ "and" delta^4(0) = (T V)/(2 pi)^4 $

- $ braket(p) = 2 omega_p V = 2 E_p V $

- This implies that, since $ ket(i) = ket(p_1) ket(p_2) $ and $ ket(f) = product_j ket(p_j) $
  - $ braket(i) = (2 E_1 V) (2 E_2 V) $
  - $ braket(f) = product_j 2 E_j V $
== Actually Calculating the S-matrix (perturbatively)
- Notice that the _first order_ of a S-matrix is just $bb(1)$ since that is the case in which nothing happens
- Write $S = bb(1) + i cal(T) $
  - $cal(T) equiv$ *transfer matrix*
  - $cal(T)$ implies momentum conservation since it vanishes unless $ket(i)$ and $ket*f)$ have the same 4-momentum
- $cal(T) = ddelta(4,Sigma p) cal(M)$

=== Matrix Elements

- $mel(f,S- bb(1),i) = i ddelta(4,Sigma P) mel(f,cal(M),i)$
  - $ abs(mel(f,S,i))^2 = delta^4(0) delta^4(Sigma p) (2 pi)^8 abs(mel(f,M,i))^2 \ = delta^4( Sigma p) T V (2 pi)^4 abs(cal(M))^2 $
