class Client < ApplicationRecord
  has_many :client_providers
  has_many :providers, through: :client_providers
  has_many :journal_entries

  def find_providers
    sql = <<-SQL
      SELECT providers.*
      FROM providers
      INNER JOIN client_providers cp on providers.id = cp.provider_id
      WHERE cp.client_id = ?
    SQL
    Provider.find_by_sql([sql, self.id])
  end

  def find_journal_entries
    sql = <<-SQL
      SELECT je.*
      FROM journal_entries je
      INNER JOIN clients c ON je.client_id = c.id
      WHERE c.id = ?
      ORDER BY je.created_at;
    SQL
    JournalEntry.find_by_sql([sql, self.id])
  end
end
