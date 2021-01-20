# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
actor = Actor.create({first_name: "Taraji P.", last_name: "Henson", known_for: "Think Like A Man"})

movie = Movie.create({title: "Two Can Play That Game", year: 2001, plot: "Shanté is so adept at navigating the waters of romance that her best girlfriends depend on her for advice whenever man trouble clouds the horizon. But when Shanté's boyfriend Keith (Morris Chestnut) is caught red-handed stepping out with her archrival Conny (Gabrielle Union), Shanté institutes her Ten Day Plan to get her man in line."})