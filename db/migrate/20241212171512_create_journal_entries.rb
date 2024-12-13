class CreateJournalEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :journal_entries do |t|
      t.text :text

      t.timestamps
    end
  end
end
