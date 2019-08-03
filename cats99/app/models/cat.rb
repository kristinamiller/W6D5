# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cat < ApplicationRecord
  validates :birth_date, presence: true
  validates :color, presence: true, inclusion: { in: %w(black orange pink),
    message: "%{value} is not a valid color" }
  validates :name, presence: true
  validates :sex, presence: true, inclusion: { in: %w(M F),
    message: "%{value} is not a valid sex" }
  validates :description, presence: true
  

  def age
    birthdate = self.birth_date.to_time
    today = Date.today.to_time
    age = ((today - birthdate) / 1.year.seconds).floor
  end
end


