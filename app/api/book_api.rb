class Book_API < Grape::API
  resource :book do
    get do
      Book.all
    end

    get ':id' do
      Book.find(params[:id])
    end

    post do
      Book.create({
        title: params[:title],
        author: params[:author]
      });
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
