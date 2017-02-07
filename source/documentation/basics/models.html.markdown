---
title: Models
category: Basics
position: 2
---
## Managed Models

In order to manage one of your ActiveRecord models in CohesiveAdmin, you only need to add one line of code to your model:

```ruby
# in app/models/post.rb

class Post < ActiveRecord::Base

  cohesive_admin

end
```

#### YAML Configuration
