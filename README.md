# Blog API

Building an API using Ruby on Rails 6 and authentication with devise token auth.

<table>
  <tr>
    <td>Ruby Version</td>
    <td>2.5.8</td>
  </tr>
  <tr>
    <td>Rails Version</td>
    <td>6.0.4.6</td>
  </tr>
  <tr>
    <td>Database</td>
    <td>PostgreSQL</td>
  </tr>
</table>

## Installation

```bash
  # clone the project
  git clone https://github.com/karinevieira/blog-api.git

  # enter the cloned directory
  cd blog-api

  # run the project
  docker-compose up --build

  # create the development and test databases
  rails db:create

  # migrate tables to database
  rails db:migrate
  rails db:migrate RAILS_ENV=test
```
Open the browser at the address http://localhost:3000 

## Running Tests

To run tests, run the following command

```bash
  rspec
```

## API Reference

#### Include Headers

Include the headers:

```bash
  uid: 'userEmail'
  client: 'userClient'
  access-token: 'UserAccessToken'
```
For the follow requests:
- Logout
- Edit user
- Edit the user password
- Delete user
- Create article
- Edit article
- Delete article

#### Endpoints

| Endpoints                 | Usage                                  | Params                                          |
|---------------------------|----------------------------------------|-------------------------------------------------|
| ``POST /api/auth``        | Create a new user.                     | email: [String], password: [String], password_confirmation: [String]   |
| ``PUT /api/auth``         | Edit the user information.             | name: [String], nickname: [String], email: [String]                    |
| ``PUT /api/auth``         | Edit the user password.                | current_password: [String], password: [String], password_confirmation: [String]|
| ``POST /api/auth``        | Forgot the user password.             | email: [String]                                                         |
| ``DELETE /api/auth``      | Remove the user.                       |                                                                        |
| ``POST /api/auth/sign_in``| Login user's session.                  | email: [String], password: [String]                                    |
| ``DELETE /api/auth/sign_out`` | Logout user's session.             |                                                                        |
| ``GET /api/articles``           | Get all of the articles.         |                                                                        |
| ``GET /api/articles/:id``       | Get details of a single article. |                                                                        |
| ``POST /api/articles``          | Create a new article.            | title: [String], body: [String]                                        |
| ``PUT /api/articles/:id``       | Edit the details of an existing article. | title: [String], body: [String]                                |
| ``DELETE /api/articles/:id``    | Remove the article.                      |                                                                |