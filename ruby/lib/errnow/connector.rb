require 'net/http'

module Errnow
  class Connector
    def initialize
      @url = 'https://github.com/'
    end

    # Get target endpoint.
    #
    # @param app_id [String] application id of yours
    # @param status [Fixnum] status for the page
    # @return res [Net::HTTPResponse]
    def get(app_id = nil, status = nil)
      params = { app_id: app_id, status: status }
      uri = URI(@url)
      uri.query = URI.encode_www_form(params)
      Net::HTTP.start(
        uri.host,
        uri.port,
        use_ssl: uri.scheme == 'https') do |http|
        req = Net::HTTP::Get.new(uri)
        # req['Custom Header'] = 'foo'
        res = http.request(req)
      end
    end
  end
end
