class RemoveIndexFromPolls < ActiveRecord::Migration[6.1]
  def change
    remove_reference :polls, :choices, null: false, foreign_key: true
  end
end
