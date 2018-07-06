require 'test_helper'
require 'singlogger'

class SingLoggerTest < ::Test::Unit::TestCase
  def test_that_it_has_a_version_number()
    assert_not_nil(::SingLogger::VERSION)
  end

  def test_that_it_runs_and_stuff()
    i = SingLogger.instance()
    i.error("This is a test")
    SingLogger.set_level_from_string(level: 'Fatal')
    i.error("You should not see this")
    SingLogger.set_level(level: ::Logger::DEBUG)
    i.error("You should see this")
  end
end
