class CardsController < ApplicationController
  def index
  #  render(json: {'cards' => 'ok'})
  end

  def show
    @mycardsId = params[:cardsId]
    @cardsResponse,@cardsStatus = GetLeankitCards.get("#{@mycardsId}")
    #TODO convert to logs
    # puts "Cards ID== #{@mycardsId}"
    # puts "Cards Response==#{@cardsResponse}"
    # puts "Cards Status== #{@cardsStatus}"
  end
end
