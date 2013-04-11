snowflake-id
============

Twitter's Snowflake ID to Time conversion module.

Installation
------------

Add this line to your application's Gemfile:

    gem 'snowflake-id'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install snowflake-id

Usage
-----

```ruby
require 'snowflake-id'

# snowflake to Time object
puts SnowflakeId.new(321239371296694272).to_time  # => 'Mon Apr 08 12:33:29.113 +0000 2013'

# Time object to snowflake
require 'time'
puts Time.parse('Mon Apr 08 12:33:29.113 +0000 2013').to_snowflake  # => 321239371296538624
```

Contributing
------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
