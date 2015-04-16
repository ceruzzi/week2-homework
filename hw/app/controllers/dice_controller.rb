class DiceController < ApplicationController

  def game


  end

  def roll
    @first = [1,2,3,4,5,6].sample
    @second = [1,2,3,4,5,6].sample
    @total= @first+@second

   if params.has_key?("goal")
     if @total== params["goal"].to_i
       @result = "you win!!"
       @next_page = "/dice"
       @again= "play again"
     elsif @total==7
       @result = "you lose!!"
       @next_page = "/dice"
       @again= "play again"
     else
       @result = "Roll again. You win if you get #{params["goal"].to_i}, lose if you get 7"
       @next_page = "/dice_roll?goal=#{params["goal"].to_i}"
       @again= "roll again"
     end

else
if (@total== 7)or(@total== 11)
  @result = "you win!!"
  @next_page = "/dice"
  @again= "play again"
elsif (@total==2 )or(@total== 3)or(@total== 12)
  @result = "you lose!!"
  @next_page = "/dice"
  @again= "play again"
else
  @result = "Roll again. You win if you get #{@total}, lose if you get 7"
  @next_page = "/dice_roll?goal=#{@total}"
  @again= "roll again"
end


  end
  end
  end