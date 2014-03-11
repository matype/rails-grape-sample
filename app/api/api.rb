class API < Grape::API
  prefix 'api'
  version 'v1', using: :path
  format :json

  resource :book do

    get do
      Book.all
    end

    get ':id' do
      Book.find(params[:id])
    end

    put ':id' do
      Book.find(params[:id]).update({
        title: params[:title],
        author: params[:author]
      })
    end

    delete ':id' do
      Book.find(params[:id]).destroy
    end

  end

end
