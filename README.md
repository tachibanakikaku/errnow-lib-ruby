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

##### Prepare initializer.

```ruby
# config/initializers/errnow.rb
# TODO: create initializer with `rake`.
Errnow.configure do |config|
  config.url               = 'url-to-request-error-page'
  config.app_id            = 'my-app-id'
  config.access_key        = 'my-access-key
  config.secret_access_key = 'my-secret-access-key'
  config.debug             = false
end
```

##### Change your application_controller.

```ruby
class ApplicationController < ActionController::Base
  ...
  include Errnow # add this line
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/errnow/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
