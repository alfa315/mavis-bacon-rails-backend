# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


jon = User.create(username: 'jonopens')
al = User.create(username: 'al')

game_one = Game.create(user_id: 1, wpm: 106, game_won: true)
game_two = Game.create(user_id: 2, wpm: 88, game_won: true)
