get "/categories/:category_id/polls" do
  @category = Category.includes(:polls).find(params[:category_id])
  erb :"polls/index"
end

get "/categories/:category_id/polls/:poll_id" do
  @poll = Poll.includes(:choices).find(params[:poll_id])
  erb :"polls/show"
end

post "/categories/:category_id/polls" do
  Vote.create(choice_id: params[:choice_id])
  if request.xhr?
    # do the thing
    content_type :json
    # { name: , y:  }
  else
    redirect "/categories/#{params[:category_id]}/polls/#{params[:poll_id]}/graph"
  end
end

get "/categories/:category_id/polls/:poll_id/graph" do
  @poll = Poll.find(params[:poll_id])
  @choices = Choice.includes(:votes).where(poll_id: params[:poll_id])
  erb :"polls/stats"
end
