class Learnbook < ApplicationRecord
  validates :username, :email, presence: true
  validates :username, length: { minimum: 3 }
  validates :email, length: { minimum: 10 }
  validates :email, uniqueness: true

  validate :check_at_symbol

  def check_at_symbol
    unless self.email.include?('@')
      errors.add(:email, 'Must include @.')
    end
  end

end
