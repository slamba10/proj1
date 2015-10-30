# Q0: Why is this error being thrown?
The Pokemon model does not exist.


# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

# Question 2a: What does the following line in the help text do? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

The code creates a button that captures the Pokemon. capture_path(id:@pokemon) plugs in the Pokemon id into the route so that it can capture the correct Pokemon.

# Question 3: What would you name your own Pokemon?

Peeceeon (PC on) - an evolved form of Eevee that has a bit of Porygon in it.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I put redirect_to :back.  It's not a path.  We only needed to go back to the specific trainer page, so by doing :back, we were able to do that once we damaged the Pokemon

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
sets the :error parameter of flash, and so when you redirect, you can just use that parameter to set the error message as a sentence and display it

# Give us feedback on the project and decal below!
great project/decal

# Extra credit: Link your Heroku deployed app
