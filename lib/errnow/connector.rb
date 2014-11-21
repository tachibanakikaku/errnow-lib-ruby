require 'net/http'

module Errnow
  class Connector
    def initialize
      Tencryptor.configure do |config|
        config.algorithm         = Errnow.config.algorithm
        config.service           = Errnow.config.service
        config.headers           = Errnow.config.headers
        config.region            = Errnow.config.region
        config.access_key        = Errnow.config.access_key
        config.secret_access_key = Errnow.config.secret_access_key
      end

      @enc = Tencryptor::Encrypter.new
    end

    # Get target endpoint.
    #
    # @param status [Fixnum] status for the page
    # @return res [Net::HTTPResponse]
    def get(status = nil)
      params = { app_id: Errnow.config.app_id, status: status }
      uri = URI(Errnow.url)
      uri.query = URI.encode_www_form(params)

      Net::HTTP.start(
        uri.host,
        uri.port,
        use_ssl: uri.scheme == 'https') do |http|
        req = Net::HTTP::Get.new(uri)
        req['Authorization'] =
          "#{Errnow.access_key}::#{@enc.signature(uri, req.method)}"
        res = http.request(req)
      end
    end
  end
end
