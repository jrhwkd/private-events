class DropTableThatIsNotJoinTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :users_events
  end
end
