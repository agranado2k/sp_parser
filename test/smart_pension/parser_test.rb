require "test_helper"

class ParserTest < Minitest::Test
  def setup
    @parser = SmartPension::Parser.new
  end

  def test_split_simple_page_and_ip
    line = "/home 184.123.665.067"

    result = @parser.split_page_and_ip(line)

    assert_equal result, {page: "/home", ip: "184.123.665.067"}
  end

  def test_split_nested_page_and_ip
    line = "/about/2 444.701.448.104"

    result = @parser.split_page_and_ip(line)

    assert_equal result, {page: "/about/2", ip: "444.701.448.104"}
  end

  def test_parse_from_one_entry
    entry = {page: "/home", ip: "184.123.665.067"}
    page_ip_list = {}

    page_ip_list = @parser.from_entry(page_ip_list, entry)

    assert_equal page_ip_list, {"/home" => ["184.123.665.067"]}
  end

  def test_parse_from_some_entries
    page_views = {}
    entries = [ {page: "/home", ip: "184.123.665.067"},
                {page: "/about/2", ip: "444.701.44.104"},
                {page: "/home", ip: "184.123.665.067"}]

    entries.each do |entry|
      page_views = @parser.from_entry(page_views, entry)
    end

    assert_equal page_views, {"/home" => ["184.123.665.067","184.123.665.067"],
                              "/about/2" => ["444.701.44.104"]}
  end

  def test_parse_log_file
    lines_from_log_file = [
        "/help_page/1 126.318.035.038",
        "/contact 184.123.665.067",
        "/home 184.123.665.067",
        "/about/2 444.701.448.104",
        "/help_page/1 929.398.951.889"]

    data = @parser.parse_file(lines_from_log_file)

    assert_equal data, {"/help_page/1"=>["126.318.035.038", "929.398.951.889"],
                       "/contact"=>["184.123.665.067"],
                       "/home"=>["184.123.665.067"],
                       "/about/2"=>["444.701.448.104"]}
  end
end
