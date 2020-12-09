class HomeController < ApplicationController


  def greeter
    render html: 'Yo!'
  end

  def programmer
    render html: 'We are Rails masters!'
  end

  def beverage
  end

  def tacos
    @my_tacos = 'carnitas'
  end

  def landing
  end

end
