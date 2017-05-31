require('minitest/autorun')
require_relative('../player')
require_relative('../dice')
require_relative('../snakes_ladder')

class TestGame < MiniTest::Test 

  def setup()
    @dice = Dice.new([1, 2, 3, 4, 5, 6])
    @player1 = Player.new("bob",0, @dice)
    @snake = Snake_Ladder.new(-6, [25,50,75])
    @ladder = Snake_Ladder.new(6,[30,60,90])
  end

  def test_player_currant_position
    squares_to_move = @dice.dice_roll
    @player1.move(squares_to_move)
    assert_equal(squares_to_move, @player1.position)
  end

  def test_player_wins
    @player1.move(100)
    win_or_move = @player1.check_win
    assert_equal("win", win_or_move)
  end

  def test_player_lands_on_snake
    @player1.move(25)
    @player1.snake_or_ladder_checker(@snake,@ladder)

    assert_equal(19,@player1.position )
    en




end 
