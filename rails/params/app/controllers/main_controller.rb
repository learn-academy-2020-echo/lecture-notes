class MainController < ApplicationController

  def tacos
    @banana = params[:my_taco]
  end

  def numbers
    @number1 = params[:num1]
    @number2 = params[:num2]
    if @number1.to_i < @number2.to_i
      @banana = 'You win'
    else
      @banana = 'Try again'
    end
  end

end
