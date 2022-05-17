set -e

test -z $PORT && PORT=80

exec poetry run uwsgi --ini uwsgi.ini --http-socket :$PORT --honour-stdin
