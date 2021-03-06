class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.text :description
      t.datetime :date
      t.string :place
      t.belongs_to :creator

      t.timestamps
    end
  end
end
