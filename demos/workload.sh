tee workload1.yaml <<EOF
bindings:
 cycle: Identity();
 name: NumberNameToString();

ops:
 op1:
  stmt: "testing: cycle={cycle}, name={name}\n"
EOF

nb5 run driver=stdout workload=workload1.yaml cycles=5
