require 'rails_helper'

RSpec.describe ClientProvider, type: :model do
  it {should belong_to(:client)}
  it {should belong_to(:provider)}

  describe 'plan types' do
    it 'has basic plan' do
      client = Client.create!(name: "John Does", email: "john@doe.com")
      provider = Provider.create!(name:"Dr. Howie Rose", email:"howie@rose.com")
      client_provider = ClientProvider.create!(client_id: client.id, provider_id: provider.id)
      expect(client_provider.plan).to eq "basic"
    end
    it 'has premium plan' do
      client = Client.create!(name: "John Does", email: "john@doe.com")
      provider = Provider.create!(name:"Dr. Howie Rose", email:"howie@rose.com")
      client_provider = ClientProvider.create!(client_id: client.id, provider_id: provider.id, plan:1)
      expect(client_provider.plan).to eq "premium"
    end
  end
end
