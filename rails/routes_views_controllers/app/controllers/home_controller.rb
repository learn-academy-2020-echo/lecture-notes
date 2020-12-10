class HomeController < ApplicationController


  def greeter
    render html: 'Yo!'
  end

  def programmer
    render html: 'We are Rails masters!'
  end

  def beverage
    @n = params[:number1]
    @n2 = params[:number2]
    if @n.to_i < @n2.to_i
      @outcome = 'You win!'
    else
      @outcome = 'Try agian'
    end
  end

  def tacos
    @my_tacos = 'carnitas'
  end

  def landing
  end

end
