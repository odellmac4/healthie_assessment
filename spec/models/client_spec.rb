require 'rails_helper'

RSpec.describe Client, type: :model do
  it {should have_many(:client_providers)}
  it {should have_many(:providers).through(:client_providers)}
  it {should have_many(:journal_entries)}
end
