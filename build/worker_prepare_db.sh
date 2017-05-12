#!/usr/bin/env bash

cd $1.worker && php app/console doctrine:database:create
cd $1.worker && php app/console doctrine:migrations:migrate --no-interaction
cd $1.worker && php app/console doctrine:fixtures:load --no-interaction