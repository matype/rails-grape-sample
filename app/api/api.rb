module API
  class Base < Grape::API
    prefix 'api'
    version 'v1', using: :path
    format :json

    mount Book_API
  end
end
