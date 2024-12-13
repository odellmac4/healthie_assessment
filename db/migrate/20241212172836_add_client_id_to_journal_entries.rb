class AddClientIdToJournalEntries < ActiveRecord::Migration[7.1]
  def change
    add_reference :journal_entries, :client, null: false, foreign_key: true
  end
end
