require "test_helper"

class PageUniqueCounterTest < Minitest::Test
  def setup
    info = {"/home" => ["184.123.665.067","184.123.665.067"],
           "/about/2" => ["444.701.44.104"]}

    @counter = SmartPension::Counter.for(info, "page_unique")
  end

  def test_collect_page_unique_visit
    page_unique_visit = @counter.execute

    assert_equal page_unique_visit, {"/home" => 1, "/about/2" => 1}
  end
end
