---
title: Configure
category: Basics
position: 1
---
## Configuration

CohesiveAdmin needs two things in order to manage an ActiveRecord model:

1. One line of code in the model itself:

    ```ruby
    # in app/models/post.rb
    class Post < ActiveRecord::Base
      cohesive_admin
    end
    ```

2. A config file describing the model and its attributes that should be editable in the CMS:

    ```yml
    # in config/cohesive_admin/post.yml
    order: 1
    fields:
      content:
        type: text
        label: Content
    ```

You're *not* expected to do this manually.  CohesiveAdmin has a generator to do it for you.  
The generator will add that line of code and kick out a default yml file describing all of a model's attributes.  
If you want to edit the yml later, you can.

##### Configure all application models that extend ActiveRecord::Base:

```console
rails g cohesive_admin:model
```

##### Configure a specific model:

```console
rails g cohesive_admin:model post
```

Don't worry if you already have a config for your model(s). It'll ask if you want to overwrite existing config files before making changes.

After you've generated model configurations, you should [set up a user and log in](/documentation/basics/login) next.