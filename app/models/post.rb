class Post < ApplicationRecord
    validates :title,
    length: { minimum: 1, maximum: 10 }

    validates :memo,
    length: { minimum: 1, maximum: 500 }

    validate :start_end_check

    def start_end_check

        errors.add(:enddate, "の日付を正しく記入してください")
        if self.startdate < self.enddate 
        binding.pry
        end
    end

end