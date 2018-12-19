User.destroy_all
Story.destroy_all
Sticker.destroy_all
Question.destroy_all
Quiz.destroy_all

user = User.create! :name => "admin", :email => "admin@gmail.com", :password => "123123", :password_confirmation => "123123", :is_admin => true

# user1 = User.create(...)
# user2 = User.create(...)
#
# story1 = Story.create(..)
# quiz1 = Quiz.create(..., story_id: story1.id)
# reading1 = Reading.create(..., user_id: user1.id, story_id: story1.id)
# question1 = Question.create(..., quiz_id: quiz1.id)


# table - readings
# model - Reading
# route - get "/stories/:id/finish", to: "stories#finish"
# method - def finish ...


# You would need another model
# call this one Reading

# - time_taken
# - user_id
# - story_id

# On the show page of a story
# Start a counter, every second add to it
# Have a button, and when that button is clicked:
# - Get the current value of the counter
# - Send it as an AJAX request to "/stories/:id/finish"
# - In that method, create a new Reading for the current user, story and time taken)
# var count = 0;
#  window.setInterval(function(){
    # count +=1;

# }, 1000) 