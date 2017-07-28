require "test_helper"

class PageViewCounterTest < Minitest::Test
  include CounterInterfaceTest

  def setup
    info = {"/home" => ["184.123.665.067","184.123.665.067"],
           "/about/2" => ["444.701.44.104"]}

    @counter = SmartPension::Counter.for(info, "page_views")
  end

  def test_collect_page_views

    page_views = @counter.execute

    assert_equal page_views, {"/home" => 2, "/about/2" => 1}
  end
end
