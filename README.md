# Hotwire Use Case

A ride into discovering how to use [Hotwire](https://hotwired.dev/) with Rails application. 

Hotwire is a collection of tools (Turbo, Stimulus, Strada) released int the end of 2020, developed by the creators of Basecamp. It was initially developed as a mean to pull data from the backend and rendering it on the frontend for Basecamp's new mail system called Hey.

This project is an attempt to scratch the surface of how to use Hotwire, and what we cannot use it for.

![Screenshot of sample project](https://github.com/burmesepotato/git-readme/blob/main/hotwire-usecase/hotwire-usecase-1.jpg)

### gem and node package versions

* Ruby: '2.7.3'
* Rails: '~> 6.1.4'
* Redis: '~> 4.0'
* @hotwired/stimulus: '^3.0.0-beta.1'
* @hotwired/turbo-rails: '^7.0.0-rc.3'

### Project Setup
```bash
git clone git@github.com:burmesepotato/hotwire-usecase.git
cd hotwire-usecase
bundle install
rails db:migrate
rails s
```
