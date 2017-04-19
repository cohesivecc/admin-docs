---
title: Log In
category: Basics
position: 2
---
## Logging In
User password authentication is disabled in the development environment.
This makes it easy to test the CMS without needing to set up, store or remember a password.

You can pipe the User creation command to the rails console in the Terminal like this:

```console
echo 'CohesiveAdmin::User.create(' \
       'email:"admin@example.com",' \
       'name:"Admin"' \
     ')' | bundle exec rails c
```
Or like this if you're using [Spring](https://github.com/rails/spring):

```console
echo 'CohesiveAdmin::User.create(' \
       'email:"admin@example.com",' \
       'name:"Admin"' \
     ')' | spring rails c
```

Now navigate to your_app.dev/admin and log in with the email address of the User you created.  Begin browsing CohesiveAdmin and editing models.

