#!/bin/sh
new_pass='Jei2@dsFe_4Di'
mysql --defaults-file=/root/.tmp.my.cnf -e "alter user 'root'@'localhost' identified by '{{ root_pass }}'"
umask 0077
cat > /root/.my.cnf <<EOF
[client]
user=root
password={{ root_pass }}
EOF
