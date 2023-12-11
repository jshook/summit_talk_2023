INFO << EOF
⦁ There are many workloads built-in to the NoSQLBench command.
⦁ You can find them with --list-workloads or --list-scenarios.
  ⦁ Each workload description may have more than one scenario to pick from.
⦁ Running a built-in workload is as easy as knowing it's path and the
  parameters needed for the driver.
⦁ There are template variables which can override the defaults, like main-cycles.

EOF

nb5 baselinesv2/cql_keyvalue2 host=localhost localdc=datacenter1 rampup-cycles=100K main-cycles=100K
