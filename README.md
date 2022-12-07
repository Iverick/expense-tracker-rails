# README

Expense tracking application powered by Rails framework.

### Visit this app

Visit the following [URL](https://stormy-inlet-90293.herokuapp.com/) to try it.

### Run it on your local machine

- Following dependencies should be installed
    - `ruby==2.7.6`
    - `psql==12.12`
    - `git`

Perform the next steps:
- Clone the git repo

  `git clone https://github.com/Iverick/expense-tracker-rails.git`
- Install gems inside the application folder

  `bundle install`
- Make sure to provide your local credentials inside `database.yml` file

  `username: <your_db_username>`

  `password: <your_db_password>`

  `host: localhost`
- Setup the database

  `rails db:setup`
    - (or you can each command separately if the previous one is not working)

  `rails db:create`

  `rails db:migrate`

  `rails db:seed`
- Start development server
  `rails s`
