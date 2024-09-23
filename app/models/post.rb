class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }
  validates :content, presence: true, length: { maximum: 1000 }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_date_after_start_date

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "は開始日より後の日付でなければなりません")
    end
  end
end