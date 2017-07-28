require "minitest/autorun"

class SPLogParserTest < Minitest::Test
  def test_parse_log
    file = File.read("logs/webserver.log").lines
    expected_output = <<~END
      /help_page/1 80 visits
      /contact 89 visits
      /home 78 visits
      /about/2 90 visits
      /index 82 visits
      /about 81 visits

      /help_page/1 23 unique views
      /contact 23 unique views
      /home 23 unique views
      /about/2 22 unique views
      /index 23 unique views
      /about 21 unique views
    END

    output = SmartPension::SPLogParser.new.parse(file)

    assert_equal expected_output, output
  end
end
