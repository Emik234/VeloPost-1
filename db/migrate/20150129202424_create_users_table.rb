class CreateUsersTable < ActiveRecord::Migration
  def change
  	create_table :users do |u|
  		u.string :fname
  		u.string :lname
  		u.string :email
  		u.string :password
  		u.string :phone
  		u.string :gender
  		u.string :bikemodel
  		u.text 	 :bio
  		u.string :address

  	end
  end
end
