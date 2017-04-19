---
title: Install
category: Basics
position: 0
---
## Installation

Add it to your Gemfile:

```ruby
gem 'cohesive_admin', git: 'git@github.com:cohesivecc/admin.git'
```

Update your bundle:
```console
bundle update
```

CohesiveAdmin relies on a User model for authentication.  To add it, install and run the migrations:

```console
rake cohesive_admin:install:migrations
rake db:migrate
```

Installation is done!  You'll want to [configure models](/documentation/basics/configure) next.

