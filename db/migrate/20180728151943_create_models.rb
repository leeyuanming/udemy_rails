class CreateModels < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.timestamps
    end
    
    create_table :articles do |t|
      t.string   :title
      t.text     :description
      t.integer  :user_id
      t.timestamps
    end

    create_table :comments do |t|
      t.text     :description
      t.integer  :user_id
      t.timestamps
    end

    create_table :sushis do |t|
      t.string   :name
      t.text     :description
      t.timestamps  
    end
  end
end
