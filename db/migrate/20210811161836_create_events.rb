class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :date
      t.string :time
      t.string :location

      t.timestamps
    end

    create_table :users_events, id: false do |t|
      t.belongs_to :user
      t.belongs_to :event
    end
  end
end
