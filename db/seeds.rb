# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'coaches.csv'))

csv = CSV.parse(csv_text, headers: true)

csv.each do |row|
  Coach.create!(name: row["Name"]) unless Coach.where(name: row["Name"]).present?
  coach = Coach.find_by(name: row["Name"])
  # puts coach
  # Coach.create(name: row["Name"])
  # Coach.create(name: row["Name"])
  start_time = row["Available at"].to_time
  end_time = row["Available until"].to_time
  while start_time < end_time do
    Appointment.create!(coach: coach, time: start_time.strftime("%I:%M %p"), day: row["Day of Week"])
    start_time += 1800
  end
  # start_time = row["Available at"].to_time  + 1800
  # end_time = row["Available until"].to_time.strftime("%I:%M %p")
  # puts start_time
  # puts end_time
  # puts row.to_hash
end