require "test_helper"

class CounterTest < Minitest::Test
  def test_raise_error_for_unknown_type
    assert_raises SmartPension::Counters::UnknownTypeError do
      SmartPension::Counter.for([], "unknown_type")
    end
  end
end
