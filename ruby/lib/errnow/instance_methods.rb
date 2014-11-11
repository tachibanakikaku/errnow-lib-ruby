require_relative 'connector'

module Errnow
  module InstanceMethods
    def render_in_err
      return if status == 200
      # TODO: connect server and get html
      # Errnow::Connector.new
      response.body = "Error Status: #{status}"
    end
  end
end
