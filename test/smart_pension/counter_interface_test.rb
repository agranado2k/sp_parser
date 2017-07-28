module CounterInterfaceTest
  def test_respond_to_execute
    assert_respond_to @counter, :execute
  end
end
