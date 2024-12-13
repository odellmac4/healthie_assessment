class ClientProvider < ApplicationRecord
  belongs_to :client
  belongs_to :provider

  enum plan: {basic:0, premium:1}
end
