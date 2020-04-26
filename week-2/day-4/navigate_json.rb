data = {
    "squadName" => "Super hero squad",
    "homeTown" => "Metro City",
    "formed" => 2016,
    "secretBase" => "Super tower",
    "active" => true,
    "members" => [
        {
            "name" => "Molecule Man",
            "age" => 29,
            "secretIdentity" => "Dan Jukes",
            "powers" => [
                "Radiation resistance",
                "Turning tiny",
                "Radiation blast"
            ]
        },
        {
            "name" => "Madame Uppercut",
            "age" => 39,
            "secretIdentity" => "Jane Wilson",
            "powers" => [
                "Million tonne punch",
                "Damage resistance",
                "Superhuman reflexes"
            ]
        }
    ]
}


puts '------------------'
puts "Our squad is called #{data['squadName']}"
puts "We are from #{data['homeTown']}"
puts "Our team started back in #{data['formed']}"
puts 'Our members are:'
puts '------------------'
data['members'].map do |member|
  puts "- #{member['name']}"
  puts "- Age: #{member['age']}"
  puts "- Secret Identity: #{member['secretIdentity']}"
  puts "- Superpowers: #{member['powers'].join(',')}"
  puts '------------------'
end