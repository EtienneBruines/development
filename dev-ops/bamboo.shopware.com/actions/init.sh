#!/usr/bin/env bash
#DESCRIPTION: initialization of your environment

# generate default SSL private/public key
php dev-ops/generate_ssl.php

composer require "shopware/platform:__PLATFORM_BRANCH__-dev" --no-interaction --no-suggest --no-scripts

INCLUDE: ./../../common/actions/init-database.sh

bin/console framework:create:tenant --tenant-id=20080911ffff4fffafffffff19830531
bin/console touchpoint:create --tenant-id=20080911ffff4fffafffffff19830531 --id=20080911ffff4fffafffffff19830531
