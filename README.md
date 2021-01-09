# README
This is my submission for the Shopify Developper Intern Challenge Question!

Here is a direct link to my [Picto Vault](https://picto-vault.herokuapp.com/) application hosted on Heroku.

# Table of Contents

- [Challenge Requirements](#challenge-requirements)
- [Background](#background)
- [Technologies Used](#technologies-used)
- [Getting Started](#getting-started)

# Challenge Requirements

Task: Build an image repository using any technology. Frameworks, libraries and external dependencies can be used to help you get faster to the parts you are interested in building. Below are the ideas that I chose to implement provided by the Shopify team (items with check marks are the components I was able to implement):

ADD image(s) to the repository
- [X] one / bulk / enormous amount of images
- [X] private or public (permissions)
- [X] secure uploading and stored images

DELETE image(s)
- [X] one / bulk / selected / all images
- [X] Prevent a user deleting images from another user (access control)
- [X] secure deletion of images

I used these ideas as a starting point but the first thing that came to mind when starting this project was to re-create a Dropbox type web application. Users are able to use Picto Vault to securely upload pictures to their account as well as delete them. Additionally, picture uploads/deletions to the app can be done in individually or in bulk. 

# Background
Before beginning this project I decided to do a bit of research on some popular online image repositories and their features. Some examples of these websites include:

- https://www.alamy.com/
- https://www.gettyimages.com/

# Technologies Used
I wanted to take advantage of my free time during Ontario's January lockdown and use this project as an opportunity to pick up some new skills and learn about new technologies! For the purpose of this web application, I decided to use Ruby on Rails with a built in PostgreSQL database.

I was set on choosing Ruby on Rails after watching a few simple informational videos and tutorials on the framework. Since Shopify is one of the most successful applications built on Rails, I was very eager to use it to build my application. The MVC architecture of Rails made for an effortless implementation of the image repository. In addition, 

Here's a few things I learned along the way:

  - How to set up a Ruby on Rails development environment
  - Working with gems and the Gemfile
  - How to create a simple authentication system from scratch
  - Using ActiveStorage with Microsoft Azure to store images
  - Hosting a web application on Heroku
  - Developed my HTML, CSS, and JavaScript skills

# Getting Started

This application can be accessed via [Heroku](https://picto-vault.herokuapp.com) or via the command line. 

Before cloning this repository, please ensure that you have the Ruby programming language, as well as Rails and PostgreSQL installed on your machine. [RailsInstaller](http://railsinstaller.org/en) is the easiest way to go about setting all of these components up on your personal machine.

Once everything is installed, navigate into a new directory and run the following command to clone the repository:

``` git clone https://github.com/sophiemichaud/imageRepo.git ```

Next, run the following command to install all gem dependencies for this project:

``` bundle install ```

The final step for of the set-up is to run the following two commands to migrate and seed the database to get the default records and schema.

``` rake db:migrate ``` ``` rake db:seed ```

Once this step is complete, start the server with:

```rails s``` or ```rails server```

This should allow you to use the url : ```http://localhost:3000/``` in your brower to get to the Picto Vault home page. It should look a little something like this:



