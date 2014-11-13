require 'net/http'
require_relative 'encrypter'

module Errnow
  class Connector
    def initialize
      @url = nil
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
        req['Authorization'] = Errnow::Encrypter.new.authorization_signature(req.method, uri)
        res = http.request(req)
      end
    end

    attr_reader :url
  end
end