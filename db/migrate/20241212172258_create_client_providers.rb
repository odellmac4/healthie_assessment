class CreateClientProviders < ActiveRecord::Migration[7.1]
  def change
    create_table :client_providers do |t|
      t.references :client, null: false, foreign_key: true
      t.references :provider, null: false, foreign_key: true
      t.integer :plan, default: 0

      t.timestamps
    end
  end
end
