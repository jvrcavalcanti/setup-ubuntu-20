# Repository
sudo apt update
sudo apt install software-properties-common curl git zip unzip
sudo add-apt-repository ppa:ondrej/php
sudo apt update

# INSTALL Core
sudo apt install php8.0
sudo apt install php8.0-common php8.0-mysql php8.0-xml php8.0-curl php8.0-gd php8.0-imagick php8.0-cli php8.0-dev php8.0-imap php8.0-mbstring php8.0-opcache php8.0-soap php8.0-zip -y

# Config Apache
sudo a2enmod php8.0
sudo service apache2 restart

# Install Composer
curl -sS https://getcomposer.org/installer -o composer-setup.php
HASH=756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3
php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
