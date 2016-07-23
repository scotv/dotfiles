df_echo "Install MongoDB 3.0"
# https://jira.mongodb.org/browse/SERVER-17742
df_apt_install mongodb-org
df_exec_cmd "sudo service mongod start"
df_exec_cmd "sudo service mongod stop"
