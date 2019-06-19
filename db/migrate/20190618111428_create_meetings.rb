class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.string :name
      t.string :detail
      t.datetime :start_time

      t.timestamps
    end
  end
end
