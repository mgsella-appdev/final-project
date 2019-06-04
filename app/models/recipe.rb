# == Schema Information
#
# Table name: recipes
#
#  id             :integer          not null, primary key
#  link           :string
#  cuisine_id     :integer
#  preparation_id :integer
#  cook_time      :time
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Recipe < ApplicationRecord
end
