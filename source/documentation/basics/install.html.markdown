---
title: Install
category: Basics
position: 0
---
## Installation

Add it to your Gemfile:

```ruby
gem 'cohesive_admin', git: 'git@github.com:cohesivecc/admin.git', tag: "<specific tag number here>"
```

Install the migrations:

```console
rake cohesive_admin:install:migrations
```

In development, password validation is disabled for both user creation, as well as authentication. This makes it easy to create test users in development and log in to the admin interface with any account.

To create a new user via the IRB console:

```ruby
u = CohesiveAdmin::User.create({ email: 'bob@example.com', password: 'doesNOTmatter', name: 'Admin User' })
```
