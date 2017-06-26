# Github Scripts!
This is the home for any custom scripts I write to interact with Github API.

## Ruby
To run these Ruby scripts, fork and clone this repo and run `bundle install` to install gem dependencies. (Must have `bundler` gem installed).

### Delete Multiple Repos
```
ruby bulk_delete_repos.rb
```

- This script will prompt user for Github username or password
- Then, it will get all repos for that user and prompt for deletion
- Repos will be ordered by the last updated repos appearing first

This script leverages Github's API to avoid the tedious task of individually deleting repos in browser. I initially made this script to clean out all of my old forks that I didn't care about anymore.
