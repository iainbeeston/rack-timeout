require 'timeout'
require 'terminator'

module Rack
  class Timeout
    @timeout = 15
    class << self
      attr_accessor :timeout
    end

    def initialize(app)
      @app = app
    end

    def call(env)
      result = nil
      custom_trap = lambda { eval("raise Timeout::Error") }
      Terminator.terminate(:seconds => self.class.timeout, :trap => custom_trap) { result = @app.call(env) }
      return result
    end

  end
end
