= Cross Sections
#import "../macros.typ":*

#rules("Important Result of this Section")[
  $ ((dif sigma)/(dif Omega) )_"CM" = 1/(64 pi^2 E_("CM")^2) abs(cal(M))^2 $ and the Born approximation $ ((dif sigma)/(dif Omega))_"Born" = m^2_e/(4 pi^2) [ op(tilde(V))(arrow(k))]^2 $
]

- Cross sections used to make sense of particle accelerator data
- Cross sectional area: $ sigma = (hash "particles")/("time" times "number density" times "velocity of beam") \ = 1/T 1/Phi N, Phi = hash "density" times "beam vel." $
  - More useful/natural is differential cross section $ (dif sigma)/(dif Omega) $ for some angle/change in angle $Omega$.
  - Info about shape of object with this

- QM
  - Generalize to Cross Sections
  - In QM, there is a probability of scattering $ P = N/N_("inc") $ with $N_"inc"$ number of incident particles
  - Cross section $ d sigma = 1/T 1/Phi d P $ (normalize flux)
  - Differential scattering number $ dif N = L times dif sigma $