$ curl -o composer-setup.php https://getcomposer.org/installer
$ php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
$ php composer-setup.php --install-dir=/usr/bin --filename=composer
$ php -r "unlink('composer-setup.php');"

或者直接下载
$ curl -o /usr/bin/composer https://getcomposer.org/composer.phar

$ composer selfupdate

$ composer config -g repo.packagist composer https://packagist.phpcomposer.com
~/.composer/config.json