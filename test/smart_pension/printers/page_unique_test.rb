require "test_helper"

class PageUniquePrinterTest < Minitest::Test
  include PrinterInterfaceTest

  def setup
    info = {
      "/home" => 3,
      "/about/2" => 2,
      "/about/1" => 1
    }
    @printer = SmartPension::Printer.for(info, "page_unique")
  end

  def test_print_page_unique
    expected_output = <<~END
      /home 3 unique views
      /about/2 2 unique views
      /about/1 1 unique views
    END

    output = @printer.print

    assert_equal expected_output, output
  end
end
