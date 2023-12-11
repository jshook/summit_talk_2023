tee workload1.yaml <<EOF
scenarios:
 default:
  step1: run driver=stdout cycles=10

bindings:
 cycle: Identity();
 name: NumberNameToString();

ops:
 op1:
  stmt: "testing: cycle={cycle}, name={name}\n"
EOF

nb5 workload1
