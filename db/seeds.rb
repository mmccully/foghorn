# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Kid.delete_all
Kid.create(:first_name => 'Bart', :last_name => 'Simpson')
Kid.create(:first_name => 'Lisa', :last_name => 'Simpson')
Kid.create(:first_name => 'Maggie', :last_name => 'Simpson')



Pet.delete_all
Pet.create(:pet_name => 'rex', :color => 'green', :species => 'chameleon', :kid_id => Kid.find_by_first_name('Bart').id)
Pet.create(:pet_name => 'silver', :color => 'gold', :species => 'goldfish', :kid_id => Kid.find_by_first_name('Lisa').id)
Pet.create(:pet_name => 'porky', :color => 'pink', :species => 'pig', :kid_id => Kid.find_by_first_name('Maggie').id)
Pet.create(:pet_name => 'petunia', :color => 'pinkish', :species => 'pig', :kid_id => Kid.find_by_first_name('Maggie').id)
Pet.create(:pet_name => 'tweety', :color => 'yellow', :species => 'canary', :kid_id => Kid.find_by_first_name('Lisa').id)
