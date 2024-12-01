# README

This README documents the steps necessary to get the application up and running.

## Demo
https://github.com/user-attachments/assets/b88ec772-a497-4843-9e7e-d905b591b939


## Ruby version

The application uses the Ruby version specified in the [.ruby-version](.ruby-version) file.

## Dependencies

- Redis

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

## How to Start the Project

To start the project, follow these steps:

1. Ensure all dependencies are installed and the database is set up as described in the previous sections.
2. Run the following command to start the development server:

   ```sh
   ./bin/dev
   ```

   > This command will start the application and any necessary background services. You can then access the application in your web browser at http://localhost:3000.

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
