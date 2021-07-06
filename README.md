# Posts API

This is a Posts Api implementation that has three
resources (User, Comments, Posts) relating via model associations.
It has user authentication implemented using JSON Web Tokens.

## Project Features

- User Authentication
- RSpec Testing
- API Versioning
- JSON Web Tokens

## How to run the project

Clone the project

```bash
  git clone https://github.com/Cathella/post-api.git
```

Go to the project directory

```bash
  cd post-api
```

Install gems

```bash
  bundle install
```

Run migrations

```bash
  rails db:migrate
```

Generate a user

```bash
  rails db:seed
```

Start the server

```bash
  rails s
```

In the a new terminal tab, run a curl command to generate auth_token

```bash
  curl -v --data "user[email]=user@mail.com&user[password]=password" http://localhost:3000/api/v1/auth
```

Then,

```bash
  curl -v -H "Authorization: token {replace-with-generated-token}" http://localhost:3000/api/v1/posts
```

## Running Tests

To run tests, run the following command

```bash
  rails g rspec:install
```

Then,

```bash
  rspec
```

## Tech Stack

**Server:** Ruby on Rails

## Authors

- [@catherine-nakitto](https://www.github.com/Cathella)
