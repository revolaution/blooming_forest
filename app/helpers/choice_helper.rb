helpers do
  def choice_answers(choices)
    choices.map do |choice|
      choice.answer
    end
  end

  def choice_votes(choices)
    choices.map do |choice|
      choice.votes.length
    end
  end
end
