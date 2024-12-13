# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'faker'

6.times do
  provider = Provider.new.tap do |p|
    p.name = Faker::Name.first_name + " " + Faker::Name.last_name + ", MD"
    p.email = Faker::Internet.email
  end
  provider.save
end

18.times do
  client = Client.new.tap do |c|
    c.name = Faker::Name.first_name + " " + Faker::Name.last_name
    c.email = Faker::Internet.email
  end
  client.save
end

30.times do
  client_provider = ClientProvider.find_or_create_by(
    client_id: (1..18).to_a.sample,
    provider_id: (1..6).to_a.sample,
    plan: [0, 1].sample
  )
end

36.times do
  journal_entries = JournalEntry.create(
    text: Faker::Lorem.paragraph,
    client_id: (1..18).to_a.sample
  )
end
