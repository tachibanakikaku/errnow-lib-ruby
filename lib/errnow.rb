require_relative 'errnow/connector'
require_relative 'errnow/instance_methods'
require_relative 'errnow/version'

module Errnow
  include Errnow::InstanceMethods

  def self.included(base)
    base.send(:after_action, :render_in_err)
  end
end
