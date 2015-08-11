Cache Manager
-----

Mountable Rails engine to view your cache and manage the keys / cleanup cache.

**Note:** Currently tested with Filestore and Redis Cache store.

Installation
-----

Add the Gem in your Gemfile

```ruby
gem 'cache_manager'
```

And bundle
```ruby
$ bundle install
```

Once installed, Mount the engine to your routes.rb

```ruby
# routes.rb

Rails.application.routes.draw do
  # your other routes
  # snipped for brevity
  mount CacheManager::Engine => "/cache_manager"
end
```

Usage
------

Once it's mounted you can access it via browser

<a href='http://localhost:3000/cache_manager'>http://localhost:3000/cache_manager</a>

This brings you to the Landing page of cache manager.  This Gives information about your Cache Stats

![alt](http://s4.postimg.org/ql1kc1wm5/Screen_Shot_2015_08_11_at_11_23_11_AM.png)


<a href='http://localhost:3000/cache_manager/keys'>http://localhost:3000/cache_manager/keys</a>

This Brings you to the page which lists all your Keys and you can delete them .  Clicking on individual links will take you to the page which displays the Cache information.

![alt](http://s4.postimg.org/665jkcuhp/Screen_Shot_2015_08_11_at_11_23_42_AM.png)
