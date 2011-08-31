# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.name                  "Mike Taylor"
  user.email                 "mike@whatsmycut.com"
  user.password              "pa55word"
  user.password_confirmation "pa55word"
end
