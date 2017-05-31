



class Player 

  attr_accessor :position
  attr_reader :name

  def initialize(name,position,dice,sandL_array)
    @position = position
    @name = name
    @dice = dice
    @sandL_array = sandL_array


  def move(number)
    @position += number
  end


  def take_turn
    dice_result = @dice.dice_roll
    move(dice_result)

  end

  def check_win
    if @position >= 100
      return "win"
    else
      return "next roll"
    end
  end

  def snake_or_ladder_checker(snake,ladder)
    for number in @sandL_array
      if @position == number
        return @position +=  snake.value
      elsif @position == @ladders.sandL_array
        return @position += ladder.value
      end
    end
  end







end


















end
