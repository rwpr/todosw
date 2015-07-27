require 'faker'

# Faker::Number.number(1)
# Faker::Number.number(1)
# Faker::Hacker.say_something_smart

10.times {Task.create(desc: Faker::Address.state, done: false)}


