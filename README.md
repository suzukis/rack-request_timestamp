# Rack::RequestTimestamp

Append timestamp to environment variable.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rack-request_timestamp'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-request_timestamp

## Usage

### Rails

In config/application.rb

```ruby
config.middleware.use Rack::RequestTimestamp
```

and use to

```ruby
request.env[:timestamp] #=>  2015-10-13 21:39:32 +0900
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/suzukis/rack-request_timestamp.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

