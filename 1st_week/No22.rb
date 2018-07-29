require './common'

User.connection

user = User.create(gender: 'M', age: 29)
name = user.names.build(first_name: 'Fumiro', last_name: 'Yoshihara')

name.save