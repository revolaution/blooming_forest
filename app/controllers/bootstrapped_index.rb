get '/' do
  erb :index_bootstrapped
end

get "/category" do
  erb :category_bootstrapped
end

get '/poll' do
  erb :poll_bootstrapped
end
