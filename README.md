# Laboratorium.ee

## Installation (local development)

### Prerequisites

- [Python](https://www.python.org/)
- [pipenv](https://pipenv.readthedocs.io/en/latest/)
- [Node.js](https://docs.npmjs.com/getting-started/installing-node)
- [SASS](http://sass-lang.com/install)
- [PostgreSQL](https://www.postgresql.org/) (if you want to use another DB you'll need to remove `psycopg2` from python dependencies)

### Installation instructions

1. Install the Python requirements:

       pipenv install --dev
       pipenv shell  # to enter the environment

2. Install the npm requirements:

       npm install

3. Create and fill out the local settings file:

       cp src/settings/env.local.example src/settings/.env
    (alternatively you can set those settings as environment variables)

4. Configure your local database by filling out `DATABASE_URL` setting in `.env` file.

    If there is no good reason to do otherwise, it should be a [Postgres](https://www.postgresql.org/) database since that's what we are using by default on production servers.

5. Run database migrations if you want an empty database or use saved database state with basic models:

       python manage.py migrate

   or

       cat dump.sql | ./manage.py dbshell
       python manage.py migrate  # just to be sure

   You can log in as superuser using the following data:

       username: admin
       password: adminadmin

   (It's hard to create fixtures which work with wagtail table inheritance - thus we use database dump instead of fixtures.)

6. Run test command to make sure everything is in order:

        python manage.py test

8. Start the frontend dev server:

       npm run start

9. Start the backend dev server (in a different console):

       python manage.py runserver


## Installation (Heroku)
You can create a new Heroku server configured for this app by clicking one of the buttons below and filling out a simple form. For this to work, you need first to link your Heroku account with your Github account.
Remember to add the newly created server to the proper Pipeline.

### Using branch `develop`
[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)][deploy-develop]

### Using branch `master`
[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)][deploy-master]

[deploy-develop]: https://heroku.com/deploy?template=https://github.com/EE/laboratorium-ee-2019/tree/develop
[deploy-master]: https://heroku.com/deploy?template=https://github.com/EE/laboratorium-ee-2019/tree/master

## Development guidelines

### CMS content for local development

    # load test server db into local db
    ./get_test_db.sh
    # load test server mediadir
    aws s3 sync s3://strona-ee-test ./mediadir

In order to cast current local DB state to file use:

    pg_dump --disable-dollar-quoting --clean --no-privileges --no-owner -U USERNAME DB_NAME -h HOST -p PORT > dump.sql

### Translation files

To regenerate translation files

    python manage.py makemessages

Compile translation files - they are not being commited, but will allow you to see changes on local dev server.

    python manage.py compilemessages

### Updating test server content

To copy DB state from production to test do

    heroku pg:copy -a laboratorium-ee-test strona-ee-prod::DATABASE_URL DATABASE_URL
    heroku run -a laboratorium-ee-test ./manage.py migrate  # make sure all migrations are applied

To copy mediafiles do

    aws s3 sync --acl public-read s3://strona-ee-prod s3://strona-ee-test
