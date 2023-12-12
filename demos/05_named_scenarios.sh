INFO << EOF
⦁ Instead of relying on the command line to capture your parameters,
  you can script them into a name scenario.
⦁ Named scenarios allow you to invoke the workload file itself,
  overriding any parameters you want on the command line.
⦁ If you don't specify the workload by name, the 'default' one is
  selected.

EOF

tee workload1.yaml <<EOF
scenarios:
 default:
  step1: run driver=stdout cycles=10
  step2: run driver=stdout cycles=10..20

bindings:
 cycle: Identity();
 name: NumberNameToString();

ops:
 op1:
  stmt: "testing: cycle={cycle}, name={name}\n"

EOF

nb5 workload1
