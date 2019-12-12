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

1. Bump the version number in `version.rb` and run `bundle install`.
2. Open a pull request with your code changes and the version change, get approval, and merge to `master`.
2. Checkout `master` locally, pull from origin, and then create a tag. If your version number were `1.0.4`, you would create the tag via the  command `git tag 1.0.4`.
4. Push your tag: `git push --tags`
5. Visit [the releases](https://github.com/codecademy-engineering/codecademy-style/releases) page and create a new release for the new tag.
