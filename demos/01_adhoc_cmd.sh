INFO <<EOF
# The stdout driver just renders your stmt as a string and prints it.
# You can specify a workload fragment on the commandline with op.
# Bind points in {{this}} format are directly defined binding functions.
# Ops and the data in them are generated deterministically.

EOF

nb5 run driver=stdout op="testing: cycle={{Identity()}}, name={{NumberNameToString()}}\n" cycles=5
nb5 run driver=stdout op="testing: cycle={{Identity()}}, name={{NumberNameToString()}}\n" cycles=5
nb5 run driver=stdout op="testing: cycle={{Identity()}}, name={{NumberNameToString()}}\n" cycles=5..10
nb5 run driver=stdout op="testing: cycle={{Identity()}}, name={{NumberNameToString()}}\n" cycles=1111110..1111115
