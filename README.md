# labs-wiki

This repo is a dokku-deployable wrapper for wiki.js.  

## How it works

It makes use of a `Dockerfile` to add this repo's `config.yml` to the latest code for wiki.js.

`config.yml` contains all of the configuration for the wiki.js instance.  Some config options are hard-coded, and some are brought in as environment variables.

## Environment Variables
Make sure the following environment variables are configured on your dokku app:

* `MONGODB_URI` - Mongodb connection string (our instance uses [MLab](https://mlab.com))
* `WIKI_GIT_USERNAME` - Username to use for writes to the content storage repo
* `WIKI_GIT_PASSWORD` - Password to use for writes to the content storage repo
* `WIKI_SESSION_KEY` - A secret key to be used when creating sessions
* `GITHUB_CLIENT_ID` - Username for github auth third-party app
* `GITHUB_CLIENT_SECRET` - Password for github auth third-party app

## Deployment

* Add a new remote called dokku `git remote add dokku dokku@{host}:{appname}`
* Push `git push dokku master`
