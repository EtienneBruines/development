#!/usr/bin/env bash
#DESCRIPTION: creates a demo data set

bin/console framework:demodata --products=500 --categories=5 --manufacturers=25 -eprod --tenant-id=20080911ffff4fffafffffff19830531
bin/console dbal:refresh:index -eprod --tenant-id=20080911ffff4fffafffffff19830531
