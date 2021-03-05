class MyName < ApplicationRecord

    validates :name, :length => { :minimum => 2, :maximum => 5}

    def name_and_surname 
        self.name + " " + self.surname
    end

end
