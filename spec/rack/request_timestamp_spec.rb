require 'spec_helper'

describe Rack::RequestTimestamp do
  include Rack::Test::Methods

  let(:test_app) { ->(env) {[200, env, "app"]} }
  let(:app)      { Rack::RequestTimestamp.new(test_app) }

  it 'assings timestamp to env[:timestamp]' do
    get '/'
    expect(last_request.env[:timestamp].class).to eq Time
  end
end
