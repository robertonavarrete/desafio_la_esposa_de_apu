# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Baby.where(name: 'Apu01').first_or_create
Baby.where(name: 'Apu02').first_or_create
Baby.where(name: 'Apu03').first_or_create
Baby.where(name: 'Apu04').first_or_create
Baby.where(name: 'Apu05').first_or_create
Baby.where(name: 'Apu06').first_or_create
Baby.where(name: 'Apu07').first_or_create
Baby.where(name: 'Apu08').first_or_create

Baby.all.each do |baby|
    Breastfeeding.create(baby: baby, volume: rand(200), feeding_time: rand(30))
end