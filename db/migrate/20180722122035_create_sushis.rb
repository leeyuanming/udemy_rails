class CreateSushis < ActiveRecord::Migration
  def change
    create_table :sushis do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
