User.destroy_all
Story.destroy_all
Sticker.destroy_all
Question.destroy_all
Quiz.destroy_all

user = User.create! :name => "admin", :email => "admin@gmail.com", :password => "123123", :password_confirmation => "123123", :is_admin => true
