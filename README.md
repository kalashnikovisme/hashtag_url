# HashtagUrl

Easy urls on social networks hash tags

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hashtag_url'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hashtag_url

## Usage

```ruby
include HashtagUrl

hashtag_url 'МИЦ', :twitter #=> http://twitter.com/hashtag/МИЦ?src=hash
```

Supported social networks:

* Facebook (alias fb)
* Twitter
* Instagram
* VKontakte (alias vk)

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
