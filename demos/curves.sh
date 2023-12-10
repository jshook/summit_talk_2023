INFO << EOF
⦁ You can use any probability distribution provided by Apache Commons Statistics.
⦁ These are implemented so that they are O(1) in sampling overhead.
⦁ No matter what distribution you use, the sampling curve is pre-computed on init.
⦁ Bindings (the {{...}} parts) are deterministic with respect to cycles.
⦁ Cycles define the interval of seed values used as well as total operations.
⦁ The op= form is a convenient ad-hoc way to specify a minimal workload.

EOF

nb5 run driver=stdout op="normal: {{Normal(50.0,10.0)}}\n" cycles=10

nb5 run driver=stdout op="normal: {{Normal(50.0,10.0)}}\n" cycles=10

nb5 run driver=stdout op="binomial: {{Binomial(100,0.5)}}\n" cycles=10

nb5 run driver=stdout op="binomial: {{Binomial(100,0.5)}}\n" cycles=10

