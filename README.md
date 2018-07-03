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
4. Same action goes for staging environment, only you should edit ``.env.staging`` file and APP_URL will be different.

#### Using
##### windows
1. `cp .env.example .env`
2. Change `COMPOSE_CONVERT_WINDOWS_PATHS=0` to `COMPOSE_CONVERT_WINDOWS_PATHS=1`
3. Change to correct path for your projects folder `COMPOSER_CACHE_DIR`
4. Start docker
5. Run `nging-start.bat`
6. Start containers `docker-compose up -d`

##### Known issues
- Some SOAP client functions might not work on php7.2