DBNAME=$DBNAME
MYSQL_USERNAME=$MYSQL_USERNAME
MYSQL_PASSWORD=$MYSQL_PASSWORD
HOSTNAME=$HOSTNAME


echo $HOSTNAME
echo $MYSQL_PASSWORD
echo $MYSQL_USERNAME
echo $DBNAME

cat <<EOT > .env
DBNAME=$DBNAME
MYSQL_USERNAME=$MYSQL_USERNAME
MYSQL_PASSWORD=$MYSQL_PASSWORD
HOSTNAME=$HOSTNAME
EOT

cat .env

ls

python_output=$(python k.py)

# echo $HOSTNAME
# echo $MYSQL_PASSWORD
# echo $MYSQL_USERNAME
# exho $DBNAME

# Set the output of the Python script as an environment variable
DEPLOY=$python_output
