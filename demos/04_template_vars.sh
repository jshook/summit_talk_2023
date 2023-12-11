INFO << EOF
⦁ You can have template variables in your workload which are textual
  place holders for custom values. This does a text-only substitution
  before the file is parsed as YAML.
⦁ "TEMPLATE(name,value)" is how you specify template variables.
⦁ "Template(...)" is a binding function which composites generated values
  tegether. They are used together in this example.

EOF


tee workload1.yaml <<EOF
scenarios:
 default:
  step1: run driver=stdout cycles=10

bindings:
 cycle: Identity();
 name: Template('hash-{}',HashRange(0,TEMPLATE(maxvalue,100)));

ops:
 op1:
  stmt: "testing: cycle={cycle}, name={name}\n"
EOF

nb5 workload1

nb5 workload1 maxvalue=100000
