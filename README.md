# Prestashop on FrankenPHP

Run the popular [Prestashop eCommerce](https://prestashop.com/) on top of [FrankenPHP](https://frankenphp.dev),
the modern app server for PHP.

## Getting Started

```bash
git clone https://github.com/ghorbani-ali/frankenphp-prestashop.git
cd frankenphp-prestashop
docker compose pull --include-deps
docker compose up
```
#### You can custom Prestashop and FrankenPHP versions in .env file:
```bash
FRANKENPHP_IMAGE_VERSION= # FeankenPHP image version
PRESTASHOP_VERSION= # Prestashop relese version
```

Prestashop is available on `http://localhost`.

During initial Prestashop setup, use the following database configuration:

* Database type: MySQL
* Database name: prestashop
* Database username: root
* Database password: prestashop
* Database host: mysql