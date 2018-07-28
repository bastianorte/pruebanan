User.delete_all
Task.delete_all
UserTask.delete_all



User.create(
email: 'bastian@bastian.com',
password:123456 )
puts "usuario creado"

12.times do |i|
  Task.create!(name: "tarea #{i+1}",
    photo: "https://picsum.photos/200/200/?image=#{i+1}"
  )
end
puts "tarea creada"

10.times do |i|
  User.create(email: "nombre#{1+i}@gmail.com",
    password:123456
  )
end
puts "10 usuarios creados"

20.times do |i|
UserTask.create!(user: User.all.sample,
  task: Task.all.sample)
end
puts "20 listas creadas"
