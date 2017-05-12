#!/usr/bin/env bash

git clone git@github.com:webignition/worker.simplytestable.com.git $1.worker
cp config/worker.simplytestable.com/app_parameters.yml $1.worker/app/config/parameters.yml
sed -i -e 's/database_name/$1/g' $1.worker/app/config/parameters.yml
cp $1.worker/app/config/security_credentials.yml.dist $1.worker/app/config/security_credentials.yml
cat config/worker.simplytestable.com/bundle_parameters.yml config/worker.simplytestable.com/bundle_parameters.hydrogen > $1.worker/src/SimplyTestable/WorkerBundle/Resources/config/parameters.yml
cd $1.worker && composer install