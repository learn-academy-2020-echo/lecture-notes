class Learnbook < ApplicationRecord
  validates :username, :email, presence: true
  validates :username, length: { minimum: 3 }
  validates :email, length: { minimum: 10 }
  validates :email, uniqueness: true

  validate :check_at_symbol
  validate :check_for_number

  def check_at_symbol
    p self
    unless self.email.include?('@')
      errors.add(:email, 'Must include @')
    end
  end

  def check_for_number
    if self.email.delete('1234567890').length == self.email.delete.length
      errors.add(:email, 'Must include a number')
    end
  end

end
