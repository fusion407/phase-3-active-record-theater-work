class Role < ActiveRecord::Base
    has_many :auditions

    def lead 
        self.auditions.first
    end

    def understudy
        self.auditions.find(1)
    end

end