# README

This simple blog app is a learning app based on the classic, first application for those
learning Ruby On Rails. The comments include learning notes. This app was built
using a collection of Ruby language resources online, [Brad Travery's YouTube
video Ruby On Rails In 60 Minutes](https://www.youtube.com/watch?v=pPy0GQJLZUM),
and [the officals Rails getting started guide](https://guides.rubyonrails.org/getting_started.html).

## Ruby and Ruby On Rails Learning Notes

For those learning Ruby and Rails, I would suggest the following strategy:

1. Follow along closely with Brad Traversy's tutorial to simply get a first sense of Ruby/Rails.
2. Then read through significant Ruby language resources and write some plain Ruby code samples without any frameworks.
3. Do a second pass on building the core app while now clearly understanding when you read and write the Ruby code itself. This should clarify a sense of the Ruby On Rails framework and raise clear questions.
4. Then build a third version of the app while referencing the official Ruby documentation. If you have a basic understanding of Ruby and a general sense of the Rails framework and questions in your mind, the learning you do with the offical documentation will more quickly become intuition.
5. At this point, you will likely be able to move on to simply coding and looking up docs.

## Running this app

### Before you can run this code locally

You will need to have a basic Ruby development environment on your computer. This can be a good bit of work in and of itself. You will need to do a bit of research to get a general familiarity with your Ruby version manager, Ruby gems, and the bundler.

For my own Macbook, the following steps were successful:

1. Update Mac OS to Catlina.
2. Update Homebrew and run an upgrade on everything. 3.`ruby -v` shows the system version of Ruby installed
3. Leave the system Ruby alone. It's for the system to manage. Your development versions of Ruby should be handled separately and manually.
4. Use homebrew to install a Ruby version manager as a foundation for your Ruby development environment. I chose `rvm` and considered `rbenv` but having both on my machine caused conflicts. I stuck with `rvm`.
5. Install a specific version of Ruby using `rvm`. Now a gemset (collection of Ruby libraries) can be associated with this particular version of Ruby.
6. Then you can install the Ruby On Rails gem. Ensure you have the `bundler` and can run a `bundle install` on a Gemfile to get gems (Ruby libraries).
7. You may need to also install `SQLite3`, `Node.js`, or `Yarn` on your machine using homebrew.

### To run this app locally

1. Clone the repo.
2. From the folder with the Gemfile, run `bundle install`
3. Run `rake db:migrate` and `rake db:seed`
4. Run `rails server`
