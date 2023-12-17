class Post < ApplicationRecord
    validates :title,
    length: { minimum: 1, maximum: 10 }

    validates :memo,
    length: { minimum: 1, maximum: 500 }

    validate :start_end_check

    def start_end_check

        if enddate.present?
        end
        if startdate.present?
        end
      
        if self.enddate < self.startdate
        errors.add(:終了日と開始日, "の日付を正しく記入してください")
        end
    end

end