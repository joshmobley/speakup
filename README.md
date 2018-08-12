# SpeakUp

## Development Setup

```docker-compose up```

This will build the images for the application

Once complete run the following in another terminal window

```docker-compose run --rm web bundle exec rake db:create db:migrate --trace```

Navigate to [localhost](localhost:3000)

## Connect to Postgres

Using your Postgres DB client of choice (Postico), you should be able to connect via the following:

```yaml
host: localhost
port: 5432
user: postgres
password: ''
database: 'myapp_development' # this is configured in your config/databases.yaml file
```

If you have any postgres processes running locally on the 5432 port, you'll need to kill those, as they'll override the docker-exposed ports.
