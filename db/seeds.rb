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

dbc = Category.create!(name: "Dev Bootcamp", description: "DBC4LIFE")

dbc_poll_one = dbc.polls.create!(question: "Favorite Merch-Mart foot court spot?")

dbc_poll_one.choices.create!(answer: "Mezza Mediterranean Grill")
dbc_poll_one.choices.create!(answer: "Billy Goat Tavern")
dbc_poll_one.choices.create!(answer: "Arby’s")
dbc_poll_one.choices.create!(answer: "Habanero Grill")

dbc_poll_two = dbc.polls.create!(question: "Favorite DBC room?")

dbc_poll_two.choices.create!(answer: "Great Hall")
dbc_poll_two.choices.create!(answer: "Room of Requirement")
dbc_poll_two.choices.create!(answer: "Snicker Doodle Fun Zone")
dbc_poll_two.choices.create!(answer: "Chamber of Secerts")

dbc_poll_three = dbc.polls.create!(question: "Solo or Pair?")

dbc_poll_three.choices.create!(answer: "Solo")
dbc_poll_three.choices.create!(answer: "Pair")

dbc_poll_four = dbc.polls.create!(question: "Ruby or Javascript?")

dbc_poll_four.choices.create!(answer: "Ruby")
dbc_poll_four.choices.create!(answer: "Javascript")
