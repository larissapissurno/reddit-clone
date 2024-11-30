# README

This README documents the steps necessary to get the application up and running.

## Ruby version

The application uses the Ruby version specified in the [.ruby-version](.ruby-version) file.

## Configuration

1. Copy the example environment variables file and update it with your settings:

   ```sh
      cp .env.example .env
   ```

2. Install the required gems:
   ```
   bundle install
   ```

## Database creation

To create the database, run:

```
 bin/rails db:create
```

## Database initialization

To initialize the database, run:

```
bin/rails db:migrate
```

## How to run the test suite

To run the test suite, execute:

```
bin/rails db:test:prepare
bin/rails test
```

## Services (job queues, cache servers, search engines, etc.)

This application uses the following services:

- Redis (for job queues)
- PostgreSQL (for the database)
