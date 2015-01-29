class CreatePostsTable < ActiveRecord::Migration
  def change
  	create_table :posts do |p|
  		p.string :blogpost
  		p.integer :user_id
  		p.timestamps null: false
  	end
  end
end
