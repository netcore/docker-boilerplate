## Docker boilerplate for staging environments

#### Boilerplate contains
* nginx
* PHP 7.2.1-fpm-alpine3.7
* PHP Extensions: `fileinfo`, `mbstring`, `mcrypt`, `gd` or `imagick`, `pdo`, `pdo_mysql`, `xmlreader`, `xmlwriter`, `bcmath`, `zip`, `xls`, `imagick`
* MySQL server
* Redis
* Supervisor
* Git
* Composer
* Wkhtmltopdf

#### Adding to existing project
1. Use git submodules to add existing project. ``git submodule add https://github.com/netcore/docker-boilerplate.git``
2. ``cp .env.example .env``
3. Edit PROJECT, APP_NAME, APP_URL and you should be good to go. Don't forget to add domain to hosts file.
4. Same action goes for staging environment, only you should edit .env.staging file and APP_URL will be different.

##### Known issues
- Some SOAP client functions might not work on php7.2