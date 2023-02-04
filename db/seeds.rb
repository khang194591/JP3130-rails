# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

movies = Movie.create([
                        { title: "Game of Thrones",
                          short_description: "Nine noble families fight for control over the lands of Westeros, while an ancient enemy returns after being dormant for millennia.",
                          trailer_url: "https://www.youtube.com/watch?v=KPLWWIOCOOQ",
                          storyline: "In the mythical continent of Westeros, several powerful families fight for control of the Seven Kingdoms. As conflict erupts in the kingdoms of men, an ancient enemy rises once again to threaten them all. Meanwhile, the last heirs of a recently usurped dynasty plot to take back their homeland from across the Narrow Sea.",
                          release_date: "2011/04/17",
                          languages: "English",
                          country_of_origin: "United States",
                          production_companies: "Home Box Office (HBO)"
                        }])