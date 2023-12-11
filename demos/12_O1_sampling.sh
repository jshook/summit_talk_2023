INFO << EOF
⦁ The probability distribution sampling methods used in NB5 are
  built for testing at speed and volume with consistent performance.
⦁ The three microbench tests below show three very different distributions.
⦁ The performance of them should be very similar, even though if
  they were computed using conventional methods, differences in
  client behavior would make your testing results inaccurate.

EOF

nb5 virtdata testmapper "Uniform(1,1000)" 12 1000 0 1000000
nb5 virtdata testmapper "Binomial(100000,0.5)" 12 1000 0 1000000
nb5 virtdata testmapper "Normal(100.0,10.0)" 12 1000 0 1000000
