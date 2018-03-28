
class BoardController < ApplicationController
  def index
    #render(json: {'board' => 'ok'})
  end

  def show
    @myboardId = params[:boardId]
    @boardResponse,@boardStatus = GetLeankitBoard.get("#{@myboardId}")

    #TODO convert to logs
     puts "Board ID== #{@myboardId}"
     puts "Board Response==#{@boardResponse}"
     puts "Board Status== #{@boardStatus}"
  end
end
