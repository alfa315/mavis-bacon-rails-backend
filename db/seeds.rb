# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


jon = User.create(username: 'jonopens')
al = User.create(username: 'alfa315')
ashe = User.create(username: 'asheee')

game_one = Game.create(user_id: 1, wpm: 60, game_won: true)
game_two = Game.create(user_id: 2, wpm: 58, game_won: true)
game_three = Game.create(user_id: 3, wpm: 5, game_won: true)
game_four = Game.create(user_id: 1, wpm: 100, game_won: true)
game_five = Game.create(user_id: 2, wpm: 1000, game_won: true)
game_six = Game.create(user_id: 3, wpm: 0, game_won: true)
