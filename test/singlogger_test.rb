require "test_helper"

class SingLoggerTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::SingLogger::VERSION
  end
end
