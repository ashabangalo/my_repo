class GetBoard
  class << self

    def get(id)
      response, status = get_json()
      status == 200 ? response : errors(response)
    end

    def errors(response)
      error = { errors: { status: response["status"], message: response["message"] } }
      #response.merge(error)
      #puts "This is status : #{response.status}, body: #{response.body}"
    end

    def get_json()
      url = "https://rentpath.leankit.com/io/board/627392013"
      uri = URI(url)
      response = api.get(uri)
      #[JSON.parse(response.body), response.status]

      puts "STATUS==#{response.status}"
      puts "BODY==#{response.body}"
      #return(JSON.parse(response))

      [response.body , response.status]

    end

    def api
      LeankitConnect.api
    end
  end
end