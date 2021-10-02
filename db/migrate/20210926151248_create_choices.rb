class CreateChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :choices do |t|
      t.string :title
      t.references :poll, null: false, foreign_key: true

      t.timestamps
    end
  end
end
