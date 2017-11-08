class GameSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :wpm, :game_won
  belongs_to :user
end
