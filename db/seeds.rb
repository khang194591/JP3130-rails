# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

user = User.new(
  :email => "demo@gmail.com",
  :name => "ドラえもん",
  :password => "123456",
  :password_confirmation => "123456"
)
user.save!

Category.create([{ text: "英語" }, { text: "日本語" }, { text: "ベトナム語" }, { text: "中国語" },])

Actor.create([{
                name: "Keanu Reeves",
                date_of_birth: "9/2/1964",
                bio: "Keanu Charles Reeves (/kiˈɑːnuː/ kee-AH-noo;[4][5][6] born September 2, 1964) is a Canadian[b] actor. Born in Beirut and raised in Toronto, Reeves began acting in theatre productions and in television films before making his feature film debut in Youngblood (1986). He had his breakthrough role in the science fiction comedy Bill & Ted's Excellent Adventure (1989), and he reprised his role in its sequels. He gained praise for playing a hustler in the independent drama My Own Private Idaho (1991) and established himself as an action hero with leading roles in Point Break (1991) and Speed (1994)."
              }])

Director.create([{
                   name: "Hayao Miyazaki",
                   date_of_birth: "16/08/1954",
                   bio: "Hayao Miyazaki (宮崎 駿, Miyazaki Hayao, [mijaꜜzaki hajao]; born January 5, 1941) is a Japanese animator, director, producer, screenwriter, author, and manga artist. A co-founder of Studio Ghibli, he has attained international acclaim as a masterful storyteller and creator of Japanese animated feature films, and is widely regarded as one of the most accomplished filmmakers in the history of animation."
                 }, {
                   name: "James Cameron",
                   date_of_birth: "05/01/1941",
                   bio: "James Francis Cameron CC is a Canadian filmmaker. A major figure in the post-New Hollywood era, he is considered one of the industry's most innovative filmmakers, regularly pushing the boundaries of cinematic capability with his use of novel technologies."
                 }, {
                   name: "Chad Stahelski",
                   date_of_birth: "20/09/1968",
                   bio: "Chad Stahelski (born September 20, 1968) is an American stuntman and film director. He is known for directing the 2014 film John Wick and directing its three sequels. Stahelski also doubled for Brandon Lee after the fatal accident involving Lee on the set of The Crow (1994) and replaced Lee in the film. He has worked as a stunt coordinator and second unit director on several films."
                 }])

Movie.create!([{
                 title: "千と千尋の神隠し",
                 short_description: "",
                 trailer_url: "",
                 storyline: "",
                 release_date: "07/20/2001",
                 languages: "日本語, English",
                 country_of_origin: "Japan",
                 production_companies: "Ghibli",
                 category_ids: %w[1 2],
                 director_ids: %w[1]
               }, {
                 title: "となりのトトロ",
                 short_description: "",
                 trailer_url: "",
                 storyline: "",
                 release_date: "04/16/1988",
                 languages: "日本語, English",
                 country_of_origin: "Japan",
                 production_companies: "Ghibli",
                 category_ids: %w[1 2],
                 director_ids: %w[1]
               }, {
                 title: "火垂るの墓",
                 short_description: "",
                 trailer_url: "",
                 storyline: "",
                 release_date: "04/16/1988",
                 languages: "日本語, English",
                 country_of_origin: "Japan",
                 production_companies: "Ghibli",
                 category_ids: %w[1 2],
                 director_ids: %w[1]
               }, {
                 title: "もののけ姫",
                 short_description: "",
                 trailer_url: "",
                 storyline: "",
                 release_date: "07/12/1997",
                 languages: "日本語, English",
                 country_of_origin: "Japan",
                 production_companies: "Ghibli",
                 category_ids: %w[1 2],
                 director_ids: %w[1]
               }, {
                 title: "ハウルの動く城",
                 short_description: "",
                 trailer_url: "",
                 storyline: "",
                 release_date: "04/20/2004",
                 languages: "日本語, English",
                 country_of_origin: "Japan",
                 production_companies: "Ghibli",
                 category_ids: %w[1 2],
                 director_ids: %w[1]
               }, {
                 title: "John Wick",
                 short_description: "An ex-hit-man comes out of retirement to track down the gangsters that killed his dog and took his car.",
                 trailer_url: "https://www.youtube.com/embed/2AUmvWm5ZDQ",
                 storyline: "With the untimely death of his beloved wife still bitter in his mouth, John Wick, the expert former assassin, receives one final gift from her--a precious keepsake to help John find a new meaning in life now that she is gone. But when the arrogant Russian mob prince, Iosef Tarasov, and his men pay Wick a rather unwelcome visit to rob him of his prized 1969 Mustang and his wife's present, the legendary hitman will be forced to unearth his meticulously concealed identity. Blind with revenge, John will immediately unleash a carefully orchestrated maelstrom of destruction against the sophisticated kingpin, Viggo Tarasov, and his family, who are fully aware of his lethal capacity. Now, only blood can quench the boogeyman's thirst for retribution.",
                 release_date: "10/24/2014",
                 languages: "English",
                 country_of_origin: "America",
                 production_companies: "Summit Entertainment",
                 category_ids: %w[1],
                 actor_ids: %w[1],
                 director_ids: %w[3]
               }, {
                 title: "John Wick: Chapter 2",
                 short_description: "After returning to the criminal underworld to repay a debt, John Wick discovers that a large bounty has been put on his life.",
                 trailer_url: "https://www.youtube.com/embed/ChpLV9AMqm4",
                 storyline: "Bound by an inescapable blood debt to the Italian crime lord, Santino D'Antonio, and with his precious 1969 Mustang still stolen, John Wick--the taciturn and pitiless assassin who thirsts for seclusion--is forced to visit Italy to honour his promise. But, soon, the Bogeyman will find himself dragged into an impossible task in the heart of Rome's secret criminal society, as every killer in the business dreams of cornering the legendary Wick who now has an enormous price on his head. Drenched in blood and mercilessly hunted down, John Wick can surely forget a peaceful retirement as no one can make it out in one piece.",
                 release_date: "2/10/2017",
                 languages: "English",
                 country_of_origin: "America",
                 production_companies: "Summit Entertainment",
                 category_ids: %w[1],
                 actor_ids: %w[1],
                 director_ids: %w[3]
               }, {
                 title: "John Wick: Chapter 3",
                 short_description: "John Wick is on the run after killing a member of the international assassins' guild, and with a $14 million price tag on his head, he is the target of hit men and women everywhere.",
                 trailer_url: "https://www.youtube.com/embed/pU8-7BX9uxs",
                 storyline: "In this third installment of the adrenaline-fueled action franchise, skilled assassin John Wick (Keanu Reeves) returns with a $14 million price tag on his head and an army of bounty-hunting killers on his trail. After killing a member of the shadowy international assassin's guild, the High Table, John Wick is excommunicado, but the world's most ruthless hit men and women await his every turn.",
                 release_date: "5/17/2019",
                 languages: "English",
                 country_of_origin: "America",
                 production_companies: "Summit Entertainment",
                 category_ids: %w[1],
                 actor_ids: %w[1],
                 director_ids: %w[3]
               },])

