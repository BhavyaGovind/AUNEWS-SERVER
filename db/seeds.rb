User.destroy_all
user1 = User.create :name => 'Pri', :email => 'pri@ga.com', :password => 'vegetables', :admin => true, :phone_number => '0425789630'

user2 = User.create :name => 'Mauritz', :email => 'mau@ga.com', :password => 'chicken', :admin => true, :phone_number => '0425789630'

user3 = User.create :name => 'Nelly', :email => 'nelly@ga.com', :password => 'chicken', :admin => true, :phone_number => '0425789630'

user4 = User.create :name => 'Bhavya', :email => 'ba@ga.com', :password => 'chicken', :admin => true, :phone_number => '0425789630'

puts "#{ User.count } users created."

Location.destroy_all

location1 = Location.create :location => 'NSW'
location2 = Location.create :location => 'WA'
location3 = Location.create :location => 'VIC'
location4 = Location.create :location => 'SA'
location5 = Location.create :location => 'TAS'
location6 = Location.create :location => 'QLD'


puts "#{ Location.count } locations created."

News.destroy_all

news1 = News.create :title => 'World News', :subtitle => 'Covid raise in India', :description => 'People die due to covid and poverty and unable to get vaccinated', :location_id => '1'
news2 = News.create :title => 'Local News', :subtitle => 'Covid raise in India', :description => 'People die due to covid and poverty and unable to get vaccinated', :location_id => '2'
news3 = News.create :title => 'Top News', :subtitle => 'Covid raise in India', :description => 'People die due to covid and poverty and unable to get vaccinated', :location_id => '3'
news4 = News.create :title => 'Politics', :subtitle => 'Covid raise in India', :description => 'People die due to covid and poverty and unable to get vaccinated', :location_id => '4'

puts "#{ News.count } news created."

Subscription.destroy_all

subscription1 = Subscription.create :email => 'mauritz.erick@gmail.com', :category => 'Crypto currency'
subscription2 = Subscription.create :email => 'daiqiong524@outlook.com', :category => 'Tech News'
subscription3 = Subscription.create :email => 'mannem.bhavya@gmail.com', :category => 'Corona virus'
subscription3 = Subscription.create :email => 'priyanka.syd@gmail.com', :category => 'Realestate'


puts "#{ Subscription.count } subscriptions created."
