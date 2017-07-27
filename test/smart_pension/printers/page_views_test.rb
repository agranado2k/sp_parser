require "test_helper"

class PageViewsPrinterTest < Minitest::Test
  include PrinterInterfaceTest

  def setup
    info = {
      "/home" => 3,
      "/about/2" => 2,
      "/about/1" => 1
    }
    @printer = SmartPension::Printer.for(info, "page_views")
  end

  def test_print_page_views
    expected_output = <<~END
      /home 3 visits
      /about/2 2 visits
      /about/1 1 visits
    END

    output = @printer.print

    assert_equal expected_output, output
  end
end
