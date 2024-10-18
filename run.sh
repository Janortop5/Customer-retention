DBNAME=$DBNAME
MYSQL_USERNAME=$MYSQL_USERNAME
MYSQL_PASSWORD=$MYSQL_PASSWORD
HOSTNAME=$HOSTNAME


cat <<EOT > .env
DBNAME=$DBNAME
MYSQL_USERNAME=$MYSQL_USERNAME
MYSQL_PASSWORD=$MYSQL_PASSWORD
HOSTNAME=$HOSTNAME
EOT

python_output=$(python run.py)

# Set the output of the Python script as an environment variable
DEPLOY=$python_output
