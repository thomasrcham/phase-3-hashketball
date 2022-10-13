require "pry"
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: %w[Black White],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1,
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7,
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15,
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5,
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1,
        },
      ],
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: %w[Turquoise Purple],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2,
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10,
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5,
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0,
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12,
        },
      ],
    },
  }
end

# array of all players
def all_players
  game_hash[:home][:players] + game_hash[:away][:players]
end

def num_points_scored(name)
  all_players.filter do |player|
    return player[:points] if player[:player_name] == name
  end
end

def shoe_size(name)
  all_players.filter do |player|
    return player[:shoe] if player[:player_name] == name
  end
end

def team_colors(name)
  if game_hash[:home][:team_name] == name
    game_hash[:home][:colors]
  else
    game_hash[:away][:colors]
  end
end

def team_names
  game_hash.map { |location, team| team[:team_name] }
end

def player_numbers(name)
  if game_hash[:home][:team_name] == name
    game_hash[:home][:players].map { |player| player[:number] }
  else
    game_hash[:away][:players].map { |player| player[:number] }
  end
end

def player_stats(name)
  all_players.find { |player| player if player[:player_name] == name }
end

def big_shoe_rebounds
  big_shoe_player = all_players.max_by { |player| player[:shoe] }
  big_shoe_player[:rebounds]
end

def most_points_scored
  most_points__player = all_players.max_by { |player| player[:points] }
  most_points__player[:name]
  binding.pry
end
