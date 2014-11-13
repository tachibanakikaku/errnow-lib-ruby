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

##### Change your application_controller.

```ruby
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include Errnow # add this line
end
```

##### Create controller for test.

```ruby
class StatusesController < ApplicationController
  def success
  end

  def not_found
    render status: :not_found
  end

  def forbidden
    render status: :forbidden
  end

  def internal_server_error
    render status: :internal_server_error
  end
end
```

##### Request

- http://localhost:3000/statuses/success

- http://localhost:3000/statuses/not_found

- http://localhost:3000/statuses/forbidden

- http://localhost:3000/statuses/internal_server_error

## Contributing

1. Fork it ( https://github.com/[my-github-username]/errnow/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
