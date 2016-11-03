# Q0: Why is this error being thrown?
    We have not actually created our Pokemon class.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
    We ran the seed file, and the common point is the lack of associated trainer_id.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
    It is calling the capture method in our PokemonsController and passing in the pokemon into the params.

# Question 3: What would you name your own Pokemon?
    Ogrim

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
    trainer_path(id: @pokemon.trainer_id), it needed the trainer ID to know which one to show.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
