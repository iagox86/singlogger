# SingLogger

This is a simple singleton wrapper around the Logger class.

I'm sure others have done this, but I found myself copying and pasting this
wrapper into every project I write, so I thought it made sense to put it into a
single gem that I can import wherever I want!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'singlogger'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install singlogger

## Usage

I generally start by using `SingLogger.set_level_from_string()` when the
application runs, based on a user parameter. You can use
`SingLogger.set_level_from_string()` or `SingLogger.set_level()` any time you
want to change it. `set_level()` takes logger constants, such as
`::Logger::DEBUG`, `::Logger::INFO`, etc.

If you don't want to use STDERR for the sink, it's important to set the `sink:`
parameter of `SingLogger.instance()` the first time you use it. That'll set the
sink of the logger going forward.

To actually log, in the `initialize()` function of your classes, add

    @logger = SingLogger.instance()

Then when you want to log:

    @logger.debug("debug message")
    @logger.info("info message")
    @logger.warn("warn message")
    @logger.error("error message")
    @logger.fatal("fatal message")

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/iagox86/singlogger.
