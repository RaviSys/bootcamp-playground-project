# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times.each do |i|
  author = Author.create(
    name: Faker::Name.name_with_middle,
    email: Faker::Internet.email,
    country: Faker::Address.country
  )

  ((i+1)%2 == 0 ? 5 : 10 ).times.each do |i|
    author.books.create(
      title: Faker::Superhero.name,
      isbn: "INDB#{SecureRandom.hex(4).upcase}",
      price: rand(2000)
    )
  end
end

assemblies = Assembly.create([
  { name: 'Range Group' },
  { name: 'Planetry' },
  { name: 'Engine' },
  { name: 'Gearbox' },
  { name: 'Rear Exel' },
  { name: 'Front Exel' },
  { name: 'Differential Gearbox' },
  { name: 'Bell Housing' }
])

parts = Part.create([
  { name: 'Niddles', part_no: 'PN100' },
  { name: 'Sun Gear', part_no: 'PN101' },
  { name: 'Idler Pin', part_no: 'PN102' },
  { name: 'Reverse Gear', part_no: 'PN103' },
  { name: 'Bolt 65MM', part_no: 'PN104' },
  { name: 'Bolt 72MM', part_no: 'PN105' },
  { name: 'Bolt 80MM', part_no: 'PN106' },
  { name: 'Cap', part_no: 'PN107' },
  { name: 'Clip', part_no: 'PN108' },
  { name: 'Articulation Bolt', part_no: 'PN109' },
  { name: 'Synschrouous Ring', part_no: 'PN110' }
])

assembly = Assembly.find(1)
assembly.parts << Part.find(1) << Part.find(2) << Part.find(6)
assembly = Assembly.find(2)
assembly.parts << Part.find(3) << Part.find(7) << Part.find(5)
assembly = Assembly.find(3)
assembly.parts << Part.find(1) << Part.find(9) << Part.find(6)
assembly = Assembly.find(4)
assembly.parts << Part.find(3) << Part.find(10) << Part.find(6)
assembly = Assembly.find(5)
assembly.parts << Part.find(9) << Part.find(10) << Part.find(11)