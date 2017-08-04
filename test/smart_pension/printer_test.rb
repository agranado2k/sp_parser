require "test_helper"

class CounterTest < Minitest::Test
  def test_raise_error_for_unknown_type
    assert_raises SmartPension::Printers::UnknownTypeError do
      SmartPension::Printer.for([], "unknown_type")
    end
  end
end
