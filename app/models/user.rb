class User < ActiveRecord::Base
    has_secure_password 
    has_many :rides
    has_many :attractions, through: :rides  
    # validates :name, presence: true 
    # validates :min_height, presence: true 
    # validates :nausea_change, presence: true 
    # validates :happiness_change, presence: true 
    # validates :tickets_change, presence: true

    def mood 
       
        if self.happiness > self.nausea 
            return "happy" 
        else
            return "sad"
        end 
    end 
end
