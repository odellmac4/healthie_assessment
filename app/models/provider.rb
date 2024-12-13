class Provider < ApplicationRecord
  has_many :client_providers
  has_many :clients, through: :client_providers
end
