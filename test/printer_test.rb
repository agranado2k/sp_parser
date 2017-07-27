require "test_helper"

class PrinterTest < Minitest::Test
  def setup
    @printer = Printer.new
    @page_views = {
      "/home" => 3,
      "/about/2" => 2,
      "/about/1" => 1
    }
  end

  def test_print_page_views
    expected_output = <<~END
      /home 3 visits
      /about/2 2 visits
      /about/1 1 visits
    END

    output = @printer.print_page_views(@page_views)

    assert_equal expected_output, output
  end

  def test_print_page_unique
    expected_output = <<~END
      /home 3 unique views
      /about/2 2 unique views
      /about/1 1 unique views
    END

    output = @printer.print_page_unique(@page_views)

    assert_equal expected_output, output
  end
end
