# MicroERP

_MicroERP_ is designed to be a b2b markeplace connecting small businesses with suppliers and manufacturers in Kenya. It is composed of several modules:
-POS
-Inventory Management
-Supplier Portal
-Payments Integration
-Sales and Reporting
-Business Intelligence

This is a work in progress. The reposisotory hosts the backend for a flutter app that serves as the client interface.


## Run on localhost
### Prerequisites
- composer
- mysql

```bash
# install dependancie
$ composer install

# initial setup
$ php artisan migrate
$ php artisan db:seed

# start server
$ php artisan serve

# make a request to the server
$ curl localhost:8000/api/houses
```


