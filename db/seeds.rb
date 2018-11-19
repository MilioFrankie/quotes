1.times do
  u = User.create(
    email: "test3@test.com",
    password: "password"
  )

20.times do
  u.q_generators.create(
    message: Faker::RickAndMorty.quote
  )
  end
end