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