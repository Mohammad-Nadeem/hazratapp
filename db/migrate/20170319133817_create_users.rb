class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

    t.string :name
    t.string :email    
    t.string  :username  
    t.string  :mobile
    t.string  :street
    t.string  :city
    t.integer :zip
    t.boolean :is_female, default: false
    t.boolean :is_admin, default: false
    t.string  :state
    t.string  :country
    t.string  :subject
    t.string  :message

    t.timestamps null: false
    
    end
  end
end
