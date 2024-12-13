class Client < ApplicationRecord
  has_many :client_providers
  has_many :providers, through: :client_providers
  has_many :journal_entries
end
