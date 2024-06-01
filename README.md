# Prestashop on FrankenPHP

Run the popular [Prestashop eCommerce](https://prestashop.com/) on top of [FrankenPHP](https://frankenphp.dev),
the modern app server for PHP.

## Getting Started

```console
git clone https://github.com/ghorbani-ali/frankenphp-prestashop.git
cd frankenphp-prestashop
docker compose pull --include-deps
docker compose up
```

Prestashop is available on `http://localhost`.

During initial Prestashop setup, use the following database configuration:

* Database type: MySQL
* Database name: prestashop
* Database username: root
* Database password: prestashop
* Database host: mysql