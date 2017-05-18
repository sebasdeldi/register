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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
