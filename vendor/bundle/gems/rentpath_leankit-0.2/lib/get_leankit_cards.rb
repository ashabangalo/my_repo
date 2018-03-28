class GetLeankitCards
  class << self

    def get(id)

      response, status = get_json(id)
      status == 200 ? response : errors(response,status)
      [response ,status]
    end

    def errors(response,status)
      $stderr.puts "Leankit connection failed response:#{response}, status:#{status}"
      # rescue LoadError => e
      #   puts " this is EXPECTION #{e}"
      #     raise response

      "failed response:#{response}, status:#{status}"

    end

    def get_json(id)
      url = "#{Settings.cardurl}#{id}"
      uri = URI(url)
      response = api.get(uri)
      #[JSON.parse(response.body), response.status]
      #TODO convert to logs
      puts "STATUS==#{response.status}"
      puts "BODY==#{response.body}"

      [response.body , response.status]
    end

    def api
      begin
        LeankitConnect.api
      end
    end
  end
end
