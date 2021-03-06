require "rack/request_timestamp/version"

module Rack
  class RequestTimestamp
    def initialize(app)
      @app = app
    end

    def call(env)
      env[:timestamp] = Time.now
      @app.call(env)
    end
  end
end
