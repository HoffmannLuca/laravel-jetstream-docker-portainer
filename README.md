# Laravel Jetstream Docker 

* production deployment on Portainer using stacks
* local dev environment with sail

## Setup

- create a `src` directory 

- `cd` into the `src` directory and run the following command to create a new laravel sail project
```bash
curl -s "https://laravel.build/put-new-laravel-app-name-here" | bash
```

- install jetstream by running the following command
```bash
composer require laravel/jetstream
```

- now you need to choose between `livewire` and `inertia` (i will choose inertia for this build)

- run this command to install the chosen stack. (`--teams --api --dark` are optional flags)
```bash
php artisan jetstream:install inertia --teams --api --dark
```