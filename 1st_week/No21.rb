require './common'

p User.select("gender = 'M'").order('age DESC')