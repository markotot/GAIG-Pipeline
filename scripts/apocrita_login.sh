#!/usr/bin/expect

set APOC_USERNAME [lindex $argv 0]
set APOC_PASSPHRASE [lindex $argv 1];
set APOC_PASSWORD [lindex $argv 2];
set APOC_PRIVATE_KEY [lindex $argv 3];

set NEPTUNE_API_TOKEN [lindex $argv 4];

spawn ssh -i $APOC_PRIVATE_KEY $APOC_USERNAME@login.hpc.qmul.ac.uk \
"export $NEPTUNE_API_TOKEN \
 ls"
expect "Enter passphrase for key '$APOC_PRIVATE_KEY':"
send "$APOC_PASSPHRASE\r"
expect "$APOC_USERNAME@login.hpc.qmul.ac.uk's password"
send "$APOC_PASSWORD\r"
interact
