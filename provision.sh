apt-get -y update
apt-get -y install git
apt-get -y install redis-server

apt-get -y install postgresql libpq-dev
sed -ri 's/md5|peer/trust/g' /etc/postgresql/9.3/main/pg_hba.conf
service postgresql restart
sudo -u postgres psql -c "CREATE USER vagrant;"
sudo -u postgres psql -c "ALTER ROLE vagrant WITH SUPERUSER;"

apt-get -y install curl
apt-get -y install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev

apt-get -y install nodejs

apt-get -y install software-properties-common
add-apt-repository -y ppa:tmate.io/archive
apt-get -y update
apt-get -y install tmate
