# SpeakUp

## Development Setup

```docker-compose up```

This will build the images for the application

Once complete run the following in another terminal window

```docker-compose run --rm web bundle exec rake db:create db:migrate --trace```

Navigate to [localhost](localhost:3000)