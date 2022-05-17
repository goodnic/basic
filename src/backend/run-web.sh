set -e

test -z $PORT && PORT=80

exec poetry run uwsgi --wsgi-file app.py --http 5000 --honour-stdin
