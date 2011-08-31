class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :salt
      t.string :encrypted_password

      t.timestamps
    end
    
    add_index :users, :email, :unique => true
    
    User.create!  :name => "admin",
                  :email => "admin@rocknswap.com",
                  :password => "Adm1n1",
                  :password_confirmation => "Adm1n1"
  end

  def self.down
    drop_table :users
  end
end
