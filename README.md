Illuminatedglass Theme
======================

This project uses the MIT-LICENSE.

To install the theme in grokphoto:
----------------------------------

Add the gem to the Gemfile:

    gem 'illuminatedglass-theme', git: 'https://github.com/akappen/illuminatedglass-theme.git'


Run bundler to install the gems.

    bundle


Add theme css after other requires in app/assets/stylesheets/application.css.sass:

    //= require theme


Configure app to load theme views first in config/application.rb:

    # make sure theme over-rides the grokphoto app
    config.railties_order = [IlluminatedglassTheme::Engine, :main_app, :all]
