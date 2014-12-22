# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

#   Mayor.create(name: 'Emanuel', city: cities.first)



mediums = Medium.create([
	{ name: 'TV Shows' },
	{ name: 'Movies' },
	{ name: 'Songs' },
	{ name: 'Movies' },
	{ name: 'Other' },
])

categories = Category.create([
	{ name: 'Canadian Heritage Moments' },
	{ name: 'Beetles Songs' },
	{ name: 'Action Movies' },
	{ name: 'Disney' },
])

questiontypes = QuestionType.create([
	{ name: 'Guess Artist' },
	{ name: 'Guess Title' },
	{ name: 'Next Word' },
	{ name: 'Next Line' },
])