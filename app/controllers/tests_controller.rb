require 'faraday'
require 'json'

class TestsController < ApplicationController
  def index

    #GetBoard.boardapi

    response  = GetBoard.get("627392013")

    @responseview = "#{response} == TESTTTTT"

    #puts " RESPOSE BODY   ====  #{response.body}"
    #LeankitConnect.api
    #
    #res = Faraday.get 'https://rentpath.leankit.com/io'
    #puts " this FARADAY TEST #{res.body}  + #{res.status}  + #{res.success?}"


  end
end
