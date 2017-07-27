require "test_helper"

class Parser
  def split_page_and_ip(line)
    parts = line.split(" ")
    {page: parts[0], ip: parts[1]}
  end
end

class ParserTest < Minitest::Test
  def test_split_simple_page_and_ip
    line = "/home 184.123.665.067"

    result = Parser.new.split_page_and_ip(line)

    assert_equal result, {page: "/home", ip: "184.123.665.067"}
  end

  def test_split_nested_page_and_ip
    line = "/about/2 444.701.448.104"

    result = Parser.new.split_page_and_ip(line)

    assert_equal result, {page: "/about/2", ip: "444.701.448.104"}
  end

end
