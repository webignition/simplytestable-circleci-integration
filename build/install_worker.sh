#!/usr/bin/env bash

git clone git@github.com:webignition/worker.simplytestable.com.git
cp config/worker.simplytestable.com/app_parameters.yml worker.simplytestable.com/app/config/parameters.yml
cp worker.simplytestable.com/app/config/security_credentials.yml.dist worker.simplytestable.com/app/config/security_credentials.yml
cat config/worker.simplytestable.com/bundle_parameters.yml config/worker.simplytestable.com/bundle_parameters.hydrogen > worker.simplytestable.com/src/SimplyTestable/WorkerBundle/Resources/config/parameters.yml
cd worker.simplytestable.com && composer install