# proxy-ruby
A very simple rack-proxy in ruby.

The intended of this project is to simplify the implementation of a proxy in Ruby. In order to implement a capable piece of software, it is used the unicorn web server that allows concurrent access.

All the produced code is present in **config.ru** file. The unicorn.rb file contains the code that allow run the unicorn web server.
Notice that  the used gem to install the web server is: *'unicorn-rails'* and not *'unicorn'*, because the last have a set of recognized errors.

To execute the projeto use the command as follows:
# bundle exec unicorn_rails -p 8090 -c ./unicorn.rb

Have a nice day!
