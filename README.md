# Pink Sunrise Dentistry 
### Back-end Rails API

## By Leith Price and Hardeep Singh

Useful links:
- [Pink-sunrise-dentistry.netlify.app](https://pink-sunrise-dentistry.netlify.app/)
- [Documentation](https://github.com/HardeepSinghAu/pink-sunrise-dentistry-documentation)
- [Pink Sunrise Dentistry Front-end repository](https://github.com/HardeepSinghAu/pink-sunrise-dentistry)
- [Pink Sunrise Dentistry Back-end repository](https://github.com/LeithPrice/pink-sunrise-dentistry-api)
- [Trello Board](https://trello.com/b/GTJg7qxU/dentist-booking-system-website)

# Required Installations

In order to run this API locally on your machine, you will need the following versions:

* Ruby 2.7.5
* Rails 6.1.6


For installation instructions follow [The Instalation Guide](https://www.tutorialspoint.com/ruby-on-rails/rails-installation)


# Installation of This App

Once you have installed the required packages,  

Create a folder on your machine you want the repo to go into and ``cd`` into it

Open up your terminal of choice, ensuring you are in your new folder and enter 

```git clone https://github.com/LeithPrice/pink-sunrise-dentistry-api```

Next in order to install all required Gems please enter the following into terminal

```bundle install --without production```

In order to set up the local Database enter the following

```rails db:create```

```rails db:migrate```

```rails db:seed```

And finally in order to run the server type

```rails s```

Your operating API can now be found in a browser at [http://localhost:3000/](http://localhost:3000/)