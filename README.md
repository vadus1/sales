Prepare for development
=======================

RVM
---

Install [RVM](https://rvm.io). After changing current directory to project
it will setup ruby and gemset according to files `.ruby-version` and `.ruby-gemset`

Getting Started
---------------

* `$ git clone git@github.com:vadus/sales.git`
* `$ cd ./sales`
* `$ cp config/database.sample.yml config/database.yml` and edit for your settings.
* `$ bundle install`
* `$ rake db:setup`

Install gems
------------

Before install gems make sure to install development dependencies for next libraries:

* [pg](https://github.com/ged/ruby-pg#requirements)
* [minimagick](https://github.com/minimagick/minimagick#requirements)

Install DB
----------

We use PostgreSQL as main database.

Deploy
======

We use heroku for deploy:

```sh
git push heroku master
```
