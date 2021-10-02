class CreatePolls < ActiveRecord::Migration[6.1]
  def change
    create_table :polls do |t|
      t.string :title
      t.references :choices, null: false, foreign_key: true

      t.timestamps
    end
  end
end
