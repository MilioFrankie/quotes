1.times do
  u = User.create(
    email: "test3@test.com",
    password: "password",
    first_name: "Bob",
    last_name: "Bobs"
  )

25.times do
  u.q_generators.create(
    message: Faker::MichaelScott.quote
  )
  end
end
