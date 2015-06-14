Image.create!([
  {image: "http://upload.wikimedia.org/wikipedia/en/b/bb/PetSoundsCover.jpg", record_id: "1"},
  {image: "https://upload.wikimedia.org/wikipedia/en/8/8e/Cover_contra.jpg", record_id: "2"},
  {image: "http://upload.wikimedia.org/wikipedia/en/4/4d/Vampire_Weekend_-_Modern_Vampires_of_the_City.png", record_id: "3"},
  {image: "http://upload.wikimedia.org/wikipedia/en/3/33/Cat_Power_The_Greatest.png", record_id: "4"},
  {image: "http://upload.wikimedia.org/wikipedia/en/e/e2/GZALiquidSwords.jpg", record_id: "5"},
  {image: "http://upload.wikimedia.org/wikipedia/en/1/11/Theres_Nothing_Wrong_With_Love.jpg", record_id: "6"},
  {image: "http://upload.wikimedia.org/wikipedia/en/4/47/WilcoYankeeHotelFoxtrot.jpg", record_id: "7"},
  {image: "http://upload.wikimedia.org/wikipedia/en/2/23/IntroducingtheBeatles.jpg", record_id: "8"},
  {image: "http://upload.wikimedia.org/wikipedia/en/4/46/Weird_Al_Yankovic_Greatest_Hits_Volume_I.jpg", record_id: "9"},
  {image: "http://static01.nyt.com/images/2007/11/12/timestopics/topics_beachboys_395.jpg", record_id: "1"},
  {image: "http://upload.wikimedia.org/wikipedia/en/e/e5/Bob_Dylan_and_The_Band_-_The_Basement_Tapes.jpg", record_id: "10"},
  {image: "http://theband.hiof.no/band_pictures/basement_tapes_LP.jpg", record_id: "10"},
  {image: "http://upload.wikimedia.org/wikipedia/en/e/e5/Bob_Dylan_and_The_Band_-_The_Basement_Tapes.jpg", record_id: "11"},
  {image: "http://theband.hiof.no/band_pictures/basement_tapes_LP.jpg", record_id: "11"},
  {image: nil, record_id: "12"},
  {image: nil, record_id: "12"}
])
Order.create!([
  {quantity: 2, record_id: nil, user_id: nil, total: nil, decimal: nil, tax: nil, sub_total: nil},
  {quantity: 2, record_id: nil, user_id: 1, total: nil, decimal: nil, tax: nil, sub_total: nil},
  {quantity: 3, record_id: nil, user_id: 1, total: nil, decimal: nil, tax: nil, sub_total: nil},
  {quantity: 3, record_id: nil, user_id: 1, total: nil, decimal: nil, tax: nil, sub_total: nil},
  {quantity: 4, record_id: nil, user_id: 1, total: nil, decimal: nil, tax: nil, sub_total: nil},
  {quantity: 5, record_id: 1, user_id: 1, total: nil, decimal: nil, tax: nil, sub_total: nil},
  {quantity: 2, record_id: 1, user_id: 1, total: nil, decimal: nil, tax: nil, sub_total: nil},
  {quantity: 2, record_id: 1, user_id: 1, total: nil, decimal: nil, tax: nil, sub_total: "200.0"},
  {quantity: 2, record_id: 1, user_id: 1, total: "218.0", decimal: nil, tax: "18.0", sub_total: "200.0"},
  {quantity: 2, record_id: 5, user_id: 1, total: "43.6", decimal: nil, tax: "3.6", sub_total: "40.0"},
  {quantity: 2, record_id: 1, user_id: 1, total: "218.0", decimal: nil, tax: "18.0", sub_total: "200.0"},
  {quantity: 2, record_id: 4, user_id: 1, total: "43.6", decimal: nil, tax: "3.6", sub_total: "40.0"}
])
Record.create!([
  {title: "Pet Sounds", artist: "The Beach Boys", price: "100.0", description: "This Beach Boys classic was arranged and produced by irascible frontman Brian Wilson. It heralded in the age of making an album as a unifying whole work, rather than a collection of songs.", supplier_id: 1},
  {title: "Contra", artist: "Vampire Weekend", price: "20.0", description: "Vampire Weekend's second album received critical acclaim and brought the quartet into the realm of international fame. But don't let that intimidate you. It's a grand album full of catchy hooks and introspective lyrics. ", supplier_id: 3},
  {title: "Modern Vampires of the City", artist: "Vampire Weekend", price: "20.0", description: "A masterpiece of African rhythms coupled with introspective lyrics and catchy loops.", supplier_id: 2},
  {title: "The Greatest", artist: "Cat Power", price: "20.0", description: "Not a greatest hits! But it might as well be. Chan Marshall travelled to Memphis to records with legendary blues artists to put together this gem.", supplier_id: 3},
  {title: "Liquid Swords", artist: "GZA", price: "20.0", description: "After '36 Chambers' the Wu-Tang Clan diverged to create some of the most interesting hip hop ever recorded. This was arguably the best of the bunch. Produced by RZA and carries his signature kung fu style. Epic.", supplier_id: 1},
  {title: "There's Nothing Wrong With Love", artist: "Built to Spill", price: "20.0", description: "Pacific Northwestern guitar virtuoso Doug Martsch achieved his first bit of recognition with this excellent album. ", supplier_id: 2},
  {title: "Yankee Hotel Foxtrot", artist: "Wilco", price: "20.0", description: "It's amazing that Wilco was dropped from their label as a result of this album. It's a truly remarkable work that revolves around frontman Jeff Tweedy's interest in the Conet Project. Look that up! ", supplier_id: 1},
  {title: "Introducing....The Beatles", artist: "The Beatles", price: "150.0", description: "First US release of English pop sensations The Beatles. This album single handedly revolutionized pop music forever.", supplier_id: 2},
  {title: "Greatest Hits", artist: "Weird Al Yankovich", price: "1.0", description: "We're practically giving it away.", supplier_id: 2},
  {title: "The Basement Tapes", artist: "Bob Dylan", price: "150.0", description: "Come for the historic compilation of Bob Dylan and the Band, stay for the loosey goosey session vibe.", supplier_id: nil},
  {title: "The Basement Tapes", artist: "Bob Dylan", price: "150.0", description: "Come for the historic compilation of Bob Dylan and the Band, stay for the loosey goosey session vibe.", supplier_id: nil},
  {title: nil, artist: nil, price: nil, description: nil, supplier_id: nil}
])
Supplier.create!([
  {name: "SoundFile", email: "jack@soundfile", phone: "555-555-5555"},
  {name: "Jay's Records", email: "Jay@jri.com", phone: "555-222-2222"},
  {name: "VinylVault", email: "john@vvi.com", phone: "33-333-3333"}
])
