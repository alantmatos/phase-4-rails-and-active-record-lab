class Student < ApplicationRecord

    def to_s
        "#{self.first_name} #{self.last_name}"
    end

    def self.best_grade
        self.order('grade DESC').limit(1)
    end

    def self.name_order
        student = self.order('first_name').limit(1)
    end

end
