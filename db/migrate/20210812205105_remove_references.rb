class RemoveReferences < ActiveRecord::Migration[6.1]
  def change
    remove_reference :users, :event, foreign_key: true, index: false
    remove_reference :events, :user, foreign_key: true, index: false
  end
end
