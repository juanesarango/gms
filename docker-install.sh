git clone https://github.com/juanesarango/gms -b docker-test
cd gms
sudo apt-get update -y
make dockerinit
make


# s3fs installation is deprecated

# github.com/genome/gms-core is deprecated by github.com/genome/genome

# Openlava Skip

# Ruby installatio skip
sudo apt-get install ruby1.9.3

sudo update-alternatives --config ruby

sudo gem install rake --version 10.1.1
sudo gem install i18n --version 0.6.9
sudo gem install multi_json --version 1.8.4
sudo gem install activesupport --version 3.2.17

# Postrgres db schema fails
