# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

SEED_FILES = [Rails.root.join('db', 'seeds', 'teams_CHC_2016-schedule-scores_team_schedule.csv')]

SEED_FILES.each do |filename|
  csv_text = File.read(filename)
  csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

  puts "seeding schedule entries"
  csv.each do |row|
    next if ['Gm#', nil].include?(row['Gm#'])  # skip blank and header rows

    game = Schedule.new
    game.date = Date.parse(row['Date']).to_s
    game.opponent = row['Opp']
    game.result = if row['W/L'] == 'W' then 1 else 0 end
    game.save
  end

end
