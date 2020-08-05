class Dog < ApplicationRecord
    has_many :employees

    def dog_name
        self.name.titlecase
    end
end
