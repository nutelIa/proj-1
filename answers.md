# Q0: Why is this error being thrown?
A: This error is being thrown because in home_controller.rb, Pokemon is not defined.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
A: They are all part of the pokemon database. The code just picks a random name to spit out.

# Question 2a: What does the following line in the help text do? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
A: When the button is pressed, it goes to the defined capture path in pokemons_controller.rb and executes what is within that. The buttom is a medium size and the method used is a patch, which is reflected in the routes.rb file.

# Question 3: What would you name your own Pokemon?
A: Sproulnille -- moves include Tourist Trap, Photo Bomb, and Carillon Play

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
A: I passed trainer_path current_trainer, which set the id to the id of the current trainer. I didn't need to have a path. I actually could have just said current_trainer

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
@pokemon.errors pulls up what the error is and the part after that translates that into something understandable for humans. Then this passes in the error and gets it to show up on th epage.

# Give us feedback on the project and decal below!
It's been challenging, but fun. The pace has been manageable; I just wish my other classes weren't so time consuming so I could do more with rails.

# Extra credit: Link your Heroku deployed app
https://powerful-plains-5862.herokuapp.com/
