# Dockerize

Dockerize is a simple Ruby on Rails gem to help you quickly add Docker configuration to your brand new Ruby on Rails project.

## Installation

Add this line to your application's Gemfile:

```ruby
group :development do
  gem 'dockerize'
end
```

And then execute:

    $ bundle install

## Usage

In a new Rails app, run:

```
dockerize init
```

This will create the following files for your Rails project:

- docker-compose.yml
- Dockerfile
- Procfile.dev

You will then be able to run:

`docker-compose up` to start your app.

`docker-compose run app bash` to enter a Docker container for your development environment.

`docker-compose run app bin/rails test...` or any other command from your host system.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/railstest-com/dockerize. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/railstest-com/dockerize/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Dockerize project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/railstest-com/dockerize/blob/main/CODE_OF_CONDUCT.md).
