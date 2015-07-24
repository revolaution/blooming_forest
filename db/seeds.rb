nature = Category.create!(name: "Nature", description: "The beautiful outdoors.")
sports = Category.create!(name: "Sports", description: "Sports, brah.")
movies = Category.create!(name: "Movies", description: "The silver screen.")
cats = Category.create!(name: "Cats", description: "Meow.")

nature_poll_one = nature.polls.create!(question: "Beaches or Forests?")
nature_poll_two = nature.polls.create!(question: "Hot Weather or Cold Weather?")

sports_poll_one = sports.polls.create!(question: "Favorite Sport, brah?")
sports_poll_two = sports.polls.create!(question: "Favorite Athlete, brah?")

movies_poll_one = movies.polls.create!(question: "Favorite movie?")
movies_poll_two = movies.polls.create!(question: "Favorite actor?")

cats_poll_one = cats.polls.create!(question: "Favorite catnip, meow?")
cats_poll_two = cats.polls.create!(question: "Favorite cat toy, meow?")

nature_poll_one.choices.create!(answer: "Beaches")
nature_poll_one.choices.create!(answer: "Forests")

nature_poll_two.choices.create!(answer: "Hot")
nature_poll_two.choices.create!(answer: "Cold")

movies_poll_one.choices.create!(answer: "Matrix")
movies_poll_one.choices.create!(answer: "Oceans Eleven")
movies_poll_one.choices.create!(answer: "Oceans Twelve")
movies_poll_one.choices.create!(answer: "Oceans Thirteen")

movies_poll_two.choices.create!(answer: "Keanu Reeves")
movies_poll_two.choices.create!(answer: "Tom Cruise")
movies_poll_two.choices.create!(answer: "Vin Diesel")
movies_poll_two.choices.create!(answer: "Paul Walker")

cats_poll_one.choices.create!(answer: "Smelly")
cats_poll_one.choices.create!(answer: "Green")
cats_poll_one.choices.create!(answer: "Sativa")

cats_poll_two.choices.create!(answer: "String")
cats_poll_two.choices.create!(answer: "Laser Pointer")
cats_poll_two.choices.create!(answer: "Bird")

sports_poll_one.choices.create!(answer: "Volleyball")
sports_poll_one.choices.create!(answer: "Football")
sports_poll_one.choices.create!(answer: "Figure Skating")
sports_poll_one.choices.create!(answer: "Snowboarding")

sports_poll_two.choices.create!(answer: "Michelle Kwan")
sports_poll_two.choices.create!(answer: "Kobe Bryant")
sports_poll_two.choices.create!(answer: "Larry Byrd")
sports_poll_two.choices.create!(answer: "Mark McGuire")
