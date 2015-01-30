class User <ActiveRecord::Base
	has_many :posts
	has_many :relationships, foreign_key: :follower_id, dependent: :destroy
	has_many :followers, through: :relationships
	has_many :followeds, through: :relationships

end

class Post <ActiveRecord::Base
	belongs_to :user

end 

class Relationship < ActiveRecord::Base
	belongs_to :follower, class_name: "User"
	belongs_to :followed, class_name: "User"
	validates_uniqueness_of :follower_id, scope: :followed_id

end

get '/follow/:id' do 
	@relationship = Relationship.new(follower_id: current_user.id, followed_id: params[:id])

	if @relationship.save
		flash[:notice] = "You've successfully followedQ"
	else 
		flash[:alert] = "There was a problem."
	end

	redirect back
end















