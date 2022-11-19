# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

** Steps neccessary to get the apps up and running.

Firstly I used Ruby on Rails version 7 as the main driver of this web app. 
The front-end was a combination of mostly Html, Scss, and just about 6 lines of javascript using the gem typed.js to animate the texts typing.


** System Dependency.
The system of this app uses the model view contoller principle. which makes the process of building mvp's organized and fast.

** Configuration.
Rails came bundled with alot of in-build addons, which made the process of building web apps fast.
Had to configure cloudinary upload, so that the use can choose a image form their computer and it would be saved in the cloud.
Had to configure Heroku in order to host the web app, using continuous integration principles.
Configured PostgresQL for the storage of movie data, such as posters, titles, descriptions..etc.

** Database creation.
The data was created from a seed file, pre-ran in order to have movies in the database for any user to choose and add to their list of bookmarks.


** Deployment.
This web app was deployed at every step, continuously updating the codebase, as if the code runs locally but when deplyed it broke, itstead of continuing on the local server, focused on fixing the bug on the deployed state, before continuing adding extra features.
The Goal is to have the deployed state run and once there is an error, fix it before continuing. 






