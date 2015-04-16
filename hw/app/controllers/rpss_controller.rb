class RpssController < ApplicationController

def main

end
  def final
    @player=params[:choice]
    @ai=["rock","paper","scissors"].sample

    if (@player=="rock" and @ai=="scissors") or (@player=="paper" and @ai=="rock") or (@player=="scissors" and @ai=="paper")
@winner= "You are the winner"

      elsif (@player=="rock" and @ai=="paper") or (@player=="paper" and @ai=="scissors") or (@player=="scissors" and @ai=="rock")
        @winner= "Your opponent is the winner"
      else
        @winner="It's a tie!!"
    end

  end
end