require 'spec_helper'
require 'airborne'

describe SharePoint::API do
  Airborne.configure do |config|
    config.rack_app = SharePoint::API
  end

  describe 'GET /api/v1/world' do
    it 'returns an empty array of statuses' do
      get '/api/v1/world'
      expect_json( hello: 'world' )
    end
  end
end