class Dice

  attr_accessor :values 

def initialize(values)
  @values = values
end

def dice_roll()
  return  @values.shuffle.first
end






end