sudo apt-get update && sudo apt-get upgrade
sudo apt-get install git
wget -qO- https://get.docker.com/ | sh
sudo usermod -aG docker ubuntu
sudo -s
mkdir /var/discourse
git clone https://github.com/sparkysmart/discourse_docker.git /var/discourse/
cd /var/discourse
cp samples/web_only.yml containers/app.yml
cp samples/redis.yml containers/redis.yml
cp samples/data.yml containers/data.yml

./launcher bootstrap app
