INFO << EOF
⦁ In this example, cycles defaults to the number of defined operations (one).
⦁ Additionally, an option dryrun=emit causes the result of the operation to be
  emitted to stdout.
⦁ The result is a ResultSet object, but the driver adapter provides a printable form.

EOF

nb5 run driver=cqld4 op="describe keyspaces;" host=localhost localdc=datacenter1 dryrun=emit
