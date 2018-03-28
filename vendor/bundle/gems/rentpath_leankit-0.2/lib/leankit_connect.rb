require 'faraday'
require 'json'

class LeankitConnect

  def self.api
    Faraday.new(url: "#{Settings.LEANKITURL}") do |conn|
      conn.response :logger
      conn.adapter Faraday.default_adapter
      conn.headers['Content-Type'] = 'application/json; charset=utf-8'
      conn.basic_auth("#{Settings.userid}","#{Settings.password}")
      #conn.token_auth('bearer11230e5ae75b4c0b68c554a2109a230423889073a3de22f58425c44f39cff301597b1fb63e4724486806da5e7e1db33d4f178d0b6b4792b592b08fe6103161a4')
    end
  end
end
