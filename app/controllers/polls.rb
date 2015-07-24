get "/categories/:category_id/polls/new" do
  @poll = Poll.new
  @category = Category.find(params[:category_id])
  erb :"polls/new"
end

post "/categories/:category_id/polls" do
  p params
  @category = Category.find(params[:category_id])
  @poll = @category.polls.create(question: params[:question])
  @poll.choices.create(answer: params[:answer_one]) if params[:answer_one] != ""
  @poll.choices.create(answer: params[:answer_two]) if params[:answer_two] != ""
  @poll.choices.create(answer: params[:answer_three]) if params[:answer_three] != ""
  @poll.choices.create(answer: params[:answer_four]) if params[:answer_four] != ""
  redirect "/categories/#{@category.id}/polls"
end

get "/categories/:category_id/polls" do
  @category = Category.includes(:polls).find(params[:category_id])
  erb :"polls/index"
end

get "/categories/:category_id/polls/:poll_id" do
  @poll = Poll.includes(:choices).find(params[:poll_id])
  erb :"polls/show"
end

post "/categories/:category_id/polls/votes" do
  Vote.create(choice_id: params[:choice_id])
  if request.xhr?
    @poll = Poll.find(params[:poll_id])
    @choices = Choice.includes(:votes).where(poll_id: params[:poll_id])

    content_type :json
    {title: @poll.question, xAxis: choice_answers(@choices), series: choice_votes(@choices)}.to_json
  else
    redirect "/categories/#{params[:category_id]}/polls/#{params[:poll_id]}/graph"
  end
end

get "/categories/:category_id/polls/:poll_id/graph" do
  @poll = Poll.find(params[:poll_id])
  @choices = Choice.includes(:votes).where(poll_id: params[:poll_id])
  erb :"polls/stats"
end
