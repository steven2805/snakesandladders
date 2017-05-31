require('minitest/autorun')
require_relative('../snakes_ladder')


class TestSnake_Ladder < MiniTest::Test 

  def setup()
    @snake = Snake_Ladder.new(-6, [25,50,75])
    @ladder = Snake_Ladder.new(6,[30,60,90])
  end

  def test_snake
    assert_equal(-6,@snake.value)
  end

  def test_ladder 
    assert_equal(6,@ladder.value )
  end 
end
