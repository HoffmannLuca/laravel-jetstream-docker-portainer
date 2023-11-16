# Laravel Jetstream Docker 

* production deployment on Portainer using stacks
* local dev environment with sail

## Setup

- create a `src` directory 

- `cd` into the `src` directory and run the following command to create a new laravel sail project
```bash
curl -s "https://laravel.build/put-new-laravel-app-name-here" | bash
```

- start the dev environment using sail
```bash
sail up -d
```

- install jetstream by running the following command
```bash
composer require laravel/jetstream
```

- now you need to choose between `livewire` and `inertia` (i will choose inertia for this build)

- run this command to install the chosen stack. (`--teams --api --dark` are optional flags)
```bash
sail artisan jetstream:install inertia --teams --api --dark
```

- run the migration 
```bash
sail artisan migrate
```

## Local Development

- in your terminal `cd` into the `src` directory

- if you dont have an alias to use `sail`instead of `./vendor/bin/sail` run the following command
```bash
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
```

- to start the environment
```bash
sail up -d
```

- to stop the environment
```bash
sail down
```

- any command you usually run with `php` in the beginning you simply change to `sail`. (for example)
```bash
# instead of
php artisan migrate
# use this
sail artisan migrate
```

- to see live changes to your project frontend open a seperate terminal window and run the following command
```bash
npm run dev
```

- to push the changes to the app container without using the dev server run the following command
```bash
npm run build
```

## Production Deployment