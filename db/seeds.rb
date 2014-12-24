# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

#   Mayor.create(name: 'Emanuel', city: cities.first)



mediums = Medium.create([
	{ name: 'TV' },
	{ name: 'Movies' },
	{ name: 'Songs' },
	{ name: 'Other' },
])

categories = Category.create([
	{ name: 'Canadian Heritage Moments' },
	{ name: 'Beetles Songs' },
	{ name: 'Action Movies' },
	{ name: 'Disney' },
	{ name: 'Classics'},
	{ name: 'Sci-Fi/Fantasy'},
	{ name: 'Comedy'},
	{ name: 'Other'}
])

questiontypes = QuestionType.create([
	{ name: 'Guess the artist\'s name' },
	{ name: 'Guess the title' },
	{ name: 'Guess the next word' },
	{ name: 'Guess the next line' },
])


