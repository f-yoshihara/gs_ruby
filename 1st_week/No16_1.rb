require './common'

# データ保存
members = [[:F, 1], [:M, 2], [:F, 3], [:M, 4], [:F, 5], [:M, 6], [:F, 7], [:M, 8], [:F, 9], [:M, 10]]

members.each do |member|
  gender = member[0]
  age    = member[1]
  user = User.new
  user.gender = gender
  user.age = age
  user.save
end

# members.each do |member|
#   gender = member[0]
#   age    = member[1]
#   User.create(
#   gender: gender,
#   age: age
# )
# end