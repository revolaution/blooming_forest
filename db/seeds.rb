nature = Category.create!(name: "Nature", description: "The beautiful outdoors.")
sports = Category.create!(name: "Sports", description: "Sports, brah.")

nature_poll_one = nature.polls.create!(question: "Beaches or Forests?")
nature_poll_two = nature.polls.create!(question: "Hot Weather or Cold Weather?")

sports_poll_one = sports.polls.create!(question: "Favorite Sport, brah?")
sports_poll_two = sports.polls.create!(question: "Favorite Athlete, brah?")

nature_poll_one.choices.create!(answer: "Beaches")
nature_poll_one.choices.create!(answer: "Forests")

nature_poll_two.choices.create!(answer: "Hot")
nature_poll_two.choices.create!(answer: "Cold")

sports_poll_one.choices.create!(answer: "Volleyball")
sports_poll_one.choices.create!(answer: "Football")
sports_poll_one.choices.create!(answer: "Figure Skating")
sports_poll_one.choices.create!(answer: "Snowboarding")

sports_poll_two.choices.create!(answer: "Michelle Kwan")
sports_poll_two.choices.create!(answer: "Kobe Bryant")
sports_poll_two.choices.create!(answer: "Larry Byrd")
sports_poll_two.choices.create!(answer: "Mark McGuire")
