class Provider < ApplicationRecord
  has_many :client_providers
  has_many :clients, through: :client_providers

  def find_clients
    sql = <<-SQL
      SELECT clients.*
      FROM clients
      INNER JOIN client_providers cp ON clients.id = cp.client_id
      WHERE cp.provider_id = ?
    SQL
    Client.find_by_sql([sql, self.id])
  end

  def find_clients_journal_entries
    sql = <<-SQL
      SELECT
        je.*
      FROM
        journal_entries je
      INNER JOIN clients c ON je.client_id = c.id
      INNER JOIN client_providers cp ON c.id = cp.client_id
      WHERE cp.provider_id = ?
      ORDER BY je.created_at;
    SQL
    JournalEntry.find_by_sql([sql, self.id])
  end
end
