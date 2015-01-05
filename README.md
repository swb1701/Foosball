Grails Base
==========

A base Grails project to bootstrap rapid development projects. The project includes my favorite Grails plugins, JavaScript libraries, and default configurations.

# Includes

## Grails Plugins

- [Quartz](http://grails.org/plugin/quartz) - Job scheduling
- [Executor](http://www.grails.org/plugin/executor) - Background threading
- [Spring Security](http://grails.org/plugin/spring-security-core) - Basic Grails security
- [Google OAuth](http://grails.org/plugin/spring-security-oauth-google) - Google OAuth (**See below for instructions on how to remove**)

## Libraries

- [AWS Java SDK](http://aws.amazon.com/sdk-for-java/) -  AWS SDK

## JavaScript Libraries

- [Semantic UI](http://semantic-ui.com/) - Frontend styling framework
- [jQuery](http://jquery.com/) - JavaScript utility library
- [Sweet Alert](http://tristanedwards.me/sweetalert) - Beautiful JavaScript alert replacement

## Bootstrap

- Creates two default users **admin** and **user** with their respective roles

# Setup

## To Do

- Change package names
- Change default users and passwords

## UserConfig

Grails Base uses an external config file to load secrets into the application. By default the application looks in the folder above the project folder for a file named **UserConfig.groovy**

## OAuth

### Use

To use create a Google application with two OAuth client ids.

- Localhost
	- **JavaScript Origins** - http://localhost:8080
	- **Redirect URIs** - http://localhost:8080/oauth/google/callback
- Production
	- **JavaScript Origins** - http://mysite.com
	- **Redirect URIs** - http://mysite.com/oauth/google/callback

Once the client ids have been created add the **localhost** client id under **oauth.google.key** and the client secret under **oauth.google.secret** in UserConfig.groovy.

### Removal

Google OAuth is on by default. To remove it follow the steps below:

- Delete the following:
	- **OAuthID** domain object
	- **SpringSecurityOAuth** controller
	- **askToCreateAccount** view
- Edit the following:
	- **User** domain object - Remove the **OAuthID** hasMany relationship
	- **UrlMapping** - Remove the **oauth** reference
	- **index.gsp** under the **home** folder -  Remove the **<oauth>** tag
	- **BuildConfig** - Remove the **spring-security-oauth-google** plugin
	- **Config** - Remove the **OAuth** section