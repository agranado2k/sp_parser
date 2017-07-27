require "test_helper"

module PrinterInterfaceTest
  def test_print_page_unique
    assert_respond_to @printer, :print
  end
end
