require 'grape'

module SharePoint
  class API < Grape::API
    format :json
    namespace :api do
      namespace :v1 do
        get :world do
          {hello: 'world'}
        end
      end
    end
  end
end