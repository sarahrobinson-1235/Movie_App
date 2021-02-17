Movie.create!([
  {title: "Friday", 
  year: 1995, 
  plot: "It's Friday and Craig Jones (Ice Cube) has just gotten fired for stealing cardboard boxes. To make matters worse, rent is due, he hates his overbearing girlfriend, Joi (Paula Jai Parker), and his best friend, Smokey (Chris Tucker), owes the local drug dealer money -- and that's all before lunch. As the hours drag on, Jones and Smokey experience the gamut of urban life, complete with crackheads, shoot-outs and overly sexual pastors, concentrated into one single, unbelievable Friday.", 
  director: "F. Gary Gray", 
  english: true
  },
  {title: "Set It Off", 
  year: 1996, 
  plot: "It follows four close friends in Los Angeles, California, who decide to plan and execute a bank robbery. They decide to do so for different reasons, although all four want better for themselves and their families.", 
  director: "F. Gary Gray", 
  english: true
  },
  {title: "Kim Possible: So the Drama", 
  year: 2005, 
  plot: "Kim has to find a date for the junior prom, and is horrified at the suggestion that she might miss out on a proper date with one of the `fanciable' guys because she spends too much time with her friend Ron.", 
  director: "Steve Loter", 
  english: true
  },
  {title: "Two Can Play That Game", 
  year: 2001, 
  plot: "Shanté is so adept at navigating the waters of romance that her best girlfriends depend on her for advice whenever man trouble clouds the horizon. But when Shanté's boyfriend Keith (Morris Chestnut) is caught red-handed stepping out with her archrival Conny (Gabrielle Union), Shanté institutes her Ten Day Plan to get her man in line.", director: "Mark Brown", 
  english: true
  },
  {title: "The Mask", 
  year: 1994, 
  plot: "When timid bank clerk Stanley Ipkiss (Jim Carrey) discovers a magical mask containing the spirit of the Norse god Loki, his entire life changes", 
  director: "Chuck Russell", 
  english: true
  },
  {title: "Mulan", 
  year: 1998, 
  plot: "To save her father from death in the army, a young maiden secretly goes in his place and becomes one of China's greatest heroines in the process.", 
  director: "Tony Bancroft & Barry Cook", english: true
  },
  {title: "Hidden Figures", 
  year: 2016, 
  plot: "Three brilliant African-American women at NASA serve as the brains behind one of the greatest operations in history: the launch of astronaut John Glenn into orbit, a stunning achievement that restored the nation's confidence, turned around the Space Race and galvanized the world.", 
  director: "Theodore Melfi", 
  english: true
  },
  {title: "Twilight", 
  year: 2008, 
  plot: "High-school student Bella Swan (Kristen Stewart), always a bit of a misfit, doesn't expect life to change much when she moves from sunny Arizona to rainy Washington state. Then she meets Edward Cullen (Robert Pattinson), a handsome but mysterious teen whose eyes seem to peer directly into her soul. Edward is a vampire whose family does not drink blood, and Bella, far from being frightened, enters into a dangerous romance with her immortal soulmate.", 
  director: "Catherine Hardwicke", 
  english: true
  },
  {title: "The Breakfast Club", 
  year: 1985, 
  plot: "Five high school students from different walks of life endure a Saturday detention under a power-hungry principal (Paul Gleason). The disparate group includes rebel John (Judd Nelson), princess Claire (Molly Ringwald), outcast Allison (Ally Sheedy), brainy Brian (Anthony Michael Hall) and Andrew (Emilio Estevez), the jock. Each has a chance to tell his or her story, making the others see them a little differently -- and when the day ends, they question whether school will ever be the same.", 
  director: "John Hughes", 
  english: nil
  },
  {title: "The Best Man", 
  year: 1999, 
  plot: "After writing a soon-to-be bestselling novel, writer and committed bachelor Harper Stewart (Taye Diggs) attempts to hide the fact that his saucy new book is loosely based on the lives and loves of his tight-knit group of friends. Harper is set to be best man at his friend Lance's (Morris Chestnut) wedding, and all his friends will be in attendance. When an advance copy of the book makes its way into the hands of his ex-flame, Jordan Armstrong (Nia Long), Harper attempts to keep it under wraps.", 
  director: nil, 
  english: true
  },
  {title: "The Best Man Holiday", 
  year: 2013, 
  plot: "Nearly 15 years after they were last together as a group, college friends Lance (Morris Chestnut), Harper (Taye Diggs), Candace (Regina Hall), Quentin (Terrence Howard), Robyn (Sanaa Lathan), Jordan (Nia Long), Murch (Harold Perrineau), and Mia (Monica Calhoun) finally reunite over the Christmas holidays. Though much has changed in their lives, the friends discover just how easy it is for long-forgotten rivalries and passionate romances to be reignited.", director: "Malcolm D. Lee", 
  english: true
  }
])

Genre.create!([
  {name: "Comedy"},
  {name: "action"},
  {name: "Animated"},
  {name: "Drama"}
])
Actor.create!([
  {first_name: "Jada", 
  last_name: "Pinkett-Smith", 
  known_for: "Set It Off", 
  gender: "F", 
  age: 49, 
  movie_id: 3
  },
  {first_name: "Taraji P.", 
  last_name: "Henson", 
  known_for: "Think Like A Man", 
  gender: "F", 
  age: 50, 
  movie_id: 7
  },
  {first_name: "Jim", 
  last_name: "Carey", 
  known_for: "The Mask", 
  gender: "M", 
  age: 59, 
  movie_id: 1
  },
  {first_name: "Christy", 
  last_name: "Romano", 
  known_for: "Kim Possible: So The Drama", gender: "F", 
  age: 36, 
  movie_id: 2
  },
  {first_name: "Vivica A.", 
  last_name: "Fox", 
  known_for: "Two Can Play That Game", 
  gender: "F", 
  age: 56, 
  movie_id: 4
  },
  {first_name: "Ming-Na", 
  last_name: "Wen", 
  known_for: "Mulan", 
  gender: "F", 
  age: 57, 
  movie_id: 6
  }
])

MovieGenre.create!([
  {
    genre_id: 1, 
    movie_id: 1
  },
  {
    genre_id: 4, 
    movie_id: 2
  },
  {
    genre_id: 4, 
    movie_id: 3
  },
  {
    genre_id: 3, 
    movie_id: 3
  },
  {
    genre_id: 1, 
    movie_id: 4
  },
  {
    genre_id: 3, 
    movie_id: 6
  },
  {
    genre_id: 4, 
    movie_id: 7
  },
  {
    genre_id: 4, 
    movie_id: 6
  }
])
User.create!([
  {
    name: "Toni", 
  email: "toni@gmail.com", 
  password_digest: "$2a$12$dTRGbn.u1KUJXaXOTvVidO1XXyK.445hOOkMZ9WK9ZIT2tQYE4Ih.", 
  admin: false
},
  {
    name: "Tamar", 
    email: "tamar@gmail.com", 
    password_digest: "$2a$12$RJhzmsWutDI/dC8yybdLYOvN8CHudIyLmkHulXVu6rNMGqzjgEwvq", admin: false
  },
  {
    name: "Tia", 
    email: "tia@gmail.com", 
    password_digest: "$2a$12$twpPba1lelcBjbiNHxtNH.iKgdkhQL/dPKinmQ0j42.g97Yo/GJBq", 
    admin: false
  },
  {
    name: "Sarah", 
    email: "sarah@gmail.com", 
    password_digest: "$2a$12$x2.hLHS7R7nDPLUpqAKd8OUah1py77leB.D0MXzp7zoXPl0YRTEyS", 
    admin: true
  }
])

