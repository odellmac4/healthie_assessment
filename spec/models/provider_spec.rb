require 'rails_helper'

RSpec.describe Provider, type: :model do
  it {should have_many(:client_providers)}
  it {should have_many(:clients).through(:client_providers)}
end
