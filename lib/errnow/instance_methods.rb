require_relative 'connector'

module Errnow
  module InstanceMethods
    # Render custom page in error.
    #
    def render_in_err
      return if status == 200
      connector = Errnow::Connector.new
      r = connector.get(status)
      if r.content_type == 'text/html' && r.code_type == Net::HTTPOK
        response.body = r.body
      end
    end

    private

    def dummy_response
      response.body = "Error Status: #{status}"
    end
  end
end
