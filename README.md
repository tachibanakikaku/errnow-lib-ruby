# Errnow

Errnow client library for Ruby.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'errnow', git: 'https://github.com/tachibanakikaku/errnow-lib-ruby.git'
```

And then execute:

```bash
$ bundle
```

## Usage

#####

Write in your controllers. application_controller is the easiest way.

```ruby
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include Errnow # add this line
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/errnow/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
