# Codecademy Style

This gem holds shared [RuboCop](https://github.com/rubocop-hq/rubocop) configuration for all of Codecademy's Ruby code bases.

## Installation

Install this gem in the development and test groups

```ruby
group :test, :development do
  gem 'codecademy-style'
end
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install codecademy-style

## Usage

At the top of you `.rubocop.yml` add:

```yaml
inherit_gem:
  codecademy-style: default.yml
```

Your local Rubcop configuration will now inherit from the rules specified in `default.yaml` in this repo. You may now run `bundle exec rubocop` as you normally would.

## Development

To contribute to this gem:

1. Open a pull request with proposed changes. Make sure your bump the version number in 
