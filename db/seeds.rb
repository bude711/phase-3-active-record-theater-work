# Role.destroy_all
# Audition.destroy_all

puts "Seeding roles..."

r1 = Role.create(character_name: "Romeo")
r2 = Role.create(character_name: "Juliet")
r3 = Role.create(character_name: "Tybalt")
r4 = Role.create(character_name: "Mercutio")
r5 = Role.create(character_name: "Benvolio")

puts "Seeding auditions..."

Audition.create(actor:"bob",location:"New York", phone:5555555,role_id:r1.id)
Audition.create(actor:"sue",location:"Brooklyn", phone:5555555,role_id:r2.id)
Audition.create(actor:"sharon",location:"Queens", phone:5555555,role_id:r1.id)
Audition.create(actor:"brad",location:"Manhattan", phone:5555555,role_id:r2.id)
Audition.create(actor:"mary",location:"Bronx", phone:5555555,role_id:r2.id)

puts "Seeding done!"