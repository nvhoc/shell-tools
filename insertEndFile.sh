insertEnd() {
ed -s $FILE << EOF
\$a
$CMD
.
w
EOF
}
insertEnd
