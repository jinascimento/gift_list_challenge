#! /bin/bash
set -e

RAILS_ENV=development bundle exec rake db:setup && rails s -b 0.0.0.0
exec "$@"