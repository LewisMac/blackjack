require ('minitest/autorun')
require ('minitest/rg')
require_relative('selector')

class TestSelector < MiniTest::Test

  def setup
    @card = Selector.new(hash)
  end

# "#{rand(1..4)}".to_i to randomize result

  def test_can_get_value_from_hash
    assert_equal(5, @card.value_from_hash(3))
  end
end
