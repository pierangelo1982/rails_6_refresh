class MyTotal < ApplicationRecord

    before_save :get_total

    def get_total
        self.total = self.first_operator + self.second_operator
    end

end
