


10.times do
  Student.create(name: Faker::Name.name, mod: rand(1..5))
end

20.times do
  Duck.create(name: Faker::Name.name, description: Faker::Lorem.sentence, student_id: Student.all.sample.id)
end
