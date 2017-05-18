# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  names      :string
#  password   :string
#  last_names :string
#  birth_year :integer
#  email      :string
#  ocupation  :string
#  address    :string
#  state_id   :integer
#  city_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  validates :names, presence: true
  validates :last_names, presence: true
  validates :birth_year, presence: true
  validates :email, presence: true, uniqueness: true
  validates :ocupation, presence: true
  validates :address, presence: true

  belongs_to :state
  belongs_to :city
end
