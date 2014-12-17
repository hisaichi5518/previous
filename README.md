# Previous

**Don't use this library outside of debugging situations.**

Previous is 呼び出し元のselfを取得できるヤツです.

You need my `debug_inspector`.

- https://github.com/hisaichi5518/debug_inspector/tree/add-frame_self

## Usage

```ruby
require "previous"

module TestPreviousCalled1
  def self.a
    Previous.called
  end
end

class TestPreviousCalled2
  def a
    p TestPreviousCalled1.a === self
  end
end

TestPreviousCalled2.new.a #=> true
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'previous'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install previous

## Contributing

1. Fork it ( https://github.com/hisaichi5518/previous/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
